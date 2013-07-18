package com.officegain.enigma.website

import groovy.text.SimpleTemplateEngine
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.codehaus.groovy.grails.plugins.springsecurity.ui.RegistrationCode
import com.officegain.enigma.base.Customer
import com.officegain.enigma.base.Role
import com.officegain.enigma.base.UserRole
import com.officegain.enigma.base.User

class RegisterController {
    def springSecurityService
    def mailService
    def saltSource

    def index = {
        render(view: "/login/auth", model: [command: new RegisterCommand()])
    }

    def register = { RegisterCommand command ->
        if (command.hasErrors()) {
            render(view: "/login/auth", model: [command: command])
            return
        }

        def customer = new Customer(emailAddress: command.emailAddress, password: command.password, accountLocked: true, enabled: true)
        if (!customer.validate() || !customer.save()) {
            // TODO
        }

        def registrationCode = new RegistrationCode(username: customer.emailAddress).save()
        String url = generateLink('verifyRegistration', [t: registrationCode.token])

        def conf = SpringSecurityUtils.securityConfig
        def body = conf.ui.register.emailBody
        if (body.contains('$')) {
            body = evaluate(body, [customer: customer, url: url])
        }
        mailService.sendMail {
            to command.emailAddress
            from conf.ui.register.emailFrom
            subject conf.ui.register.emailSubject
            html body.toString()
        }

        render view: '/login/auth', model: [emailSent: true]
    }

    def verifyRegistration = {
        def conf = SpringSecurityUtils.securityConfig
        String defaultTargetUrl = conf.successHandler.defaultTargetUrl

        String token = params.t

        def registrationCode = token ? RegistrationCode.findByToken(token) : null
        if (!registrationCode) {
            flash.message = 'Invalid verification code found.'
            redirect uri: defaultTargetUrl
            return
        }

        def customer
        RegistrationCode.withTransaction { status ->
            customer = Customer.findByEmailAddress(registrationCode.username)
            if (!customer) {
                return
            }
            customer.accountLocked = false
            customer.save()
            for (roleName in conf.ui.register.defaultRoleNames) {
                UserRole.create(customer, Role.findByAuthority(roleName))
            }
            registrationCode.delete()
        }

        if (!customer) {
            flash.message = 'Invalid verification code found'
            redirect uri: defaultTargetUrl
            return
        }

        springSecurityService.reauthenticate(customer.emailAddress)

        flash.message = 'Registration verification completed.'
        redirect uri: conf.ui.register.postRegisterUrl ?: defaultTargetUrl
    }

    def forgotPassword = {
        if (!request.post) {
            // show the form
            return
        }

        String emailAddress = params.emailAddress
        if (!emailAddress) {
            flash.message = 'No such email address registered with us.'
            return
        }

        def customer = Customer.findByEmailAddress(emailAddress)
        if (!customer) {
            flash.message = 'No such email address registered with us.'
            return
        }

        def registrationCode = new RegistrationCode(username: customer.emailAddress).save()

        String url = generateLink('resetPassword', [t: registrationCode.token])

        def conf = SpringSecurityUtils.securityConfig
        def body = conf.ui.forgotPassword.emailBody
        if (body.contains('$')) {
            body = evaluate(body, [customer: customer, url: url])
        }
        mailService.sendMail {
            to customer.emailAddress
            from conf.ui.forgotPassword.emailFrom
            subject conf.ui.forgotPassword.emailSubject
            html body.toString()
        }

        [emailSent: true]
    }

    def resetPassword = { ResetPasswordCommand command ->
        String token = params.t

        def registrationCode = token ? RegistrationCode.findByToken(token) : null
        if (!registrationCode) {
            flash.message = 'Invalid verification code found while resetting password.'
            redirect uri: SpringSecurityUtils.securityConfig.successHandler.defaultTargetUrl
            return
        }

        if (!request.post) {
            return [token: token, command: new ResetPasswordCommand()]
        }

        command.emailAddress = registrationCode.username
        command.validate()

        if (command.hasErrors()) {
            return [token: token, command: command]
        }

        RegistrationCode.withTransaction { status ->
            def customer = Customer.findByEmailAddress(registrationCode.username)
            customer.password = command.password
            customer.save()
            registrationCode.delete()
        }

        springSecurityService.reauthenticate(registrationCode.username)

        flash.message = 'Password reset successfully.'

        def conf = SpringSecurityUtils.securityConfig
        String postResetUrl = conf.ui.register.postResetUrl ?: conf.successHandler.defaultTargetUrl
        redirect uri: postResetUrl
    }

    protected String generateLink(String action, linkParams) {
        createLink(base: "$request.scheme://$request.serverName:$request.serverPort$request.contextPath", controller: 'register', action: action, params: linkParams)
    }

    protected String evaluate(s, binding) {
        new SimpleTemplateEngine().createTemplate(s).make(binding)
    }

    static final passwordValidator = { String password, command ->
        if (command.emailAddress && command.emailAddress.equals(password)) {
            return 'command.password.error.username'
        }

        if (password && password.length() >= 8 && password.length() <= 64 && (!password.matches('^.*\\p{Alpha}.*$') || !password.matches('^.*\\p{Digit}.*$') || !password.matches('^.*[!@#$%^&].*$'))) {
            return 'command.password.error.strength'
        }
    }

    static final repeatPasswordValidator = { value, command ->
        if (command.password != command.repeatPassword) {
            return 'command.password2.error.mismatch'
        }
    }
}

class RegisterCommand {
    String emailAddress
    String password
    String repeatPassword

    static constraints = {
        emailAddress blank: false, email: true, validator: { value, command ->
            if (value) {
                if (User.findByEmailAddress(value)) {
                    return 'registerCommand.username.unique'
                }
            }
        }
        password blank: false, minSize: 8, maxSize: 64, validator: RegisterController.passwordValidator
        repeatPassword validator: RegisterController.repeatPasswordValidator
    }
}

class ResetPasswordCommand {
    String emailAddress
    String password
    String repeatPassword

    static constraints = {
        password blank: false, minSize: 8, maxSize: 64, validator: RegisterController.passwordValidator
        repeatPassword validator: RegisterController.repeatPasswordValidator
    }
}
