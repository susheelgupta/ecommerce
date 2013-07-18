package com.maali.tournamentmanager

import groovy.text.SimpleTemplateEngine
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils
import org.codehaus.groovy.grails.plugins.springsecurity.ui.RegistrationCode

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

        def user = new MUser(firstName:'firstName', middleName:'middleName', lastName:'lastName', address:'address', dateOfBirth:new Date(),
                placeOfBirth:'placeOfBirth', countryOfBirth:'countryOfBirth', citizenship: 'citizenship',emailAddress: command.emailAddress,
                password:command.password, enabled: true, accountExpired: false, accountLocked: true, passwordExpired: false)
        if (user.validate()) {
            user.save(failOnError: true, flush: true)
        }

        def registrationCode = new RegistrationCode(username: user.emailAddress).save()
        String url = generateLink('verifyRegistration', [t: registrationCode.token])

        def conf = SpringSecurityUtils.securityConfig
        def body = conf.ui.register.emailBody
        if (body.contains('$')) {
            body = evaluate(body, [user: user, url: url])
        }
        mailService.sendMail {
            to command.emailAddress
            from conf.ui.register.emailFrom
            subject conf.ui.register.emailSubject
            html body.toString()
        }

        render view: '/login/auth', model: [emailSent: true]
    }

    def registerInstitution = { RegisterInstitution command ->
        if (command.hasErrors()) {
            render(view: "/login/institutionLogin", model: [command: command])
            return
        }

        def user = new MInstitution(type:'type',name:'name', address:'address', phone:'12345', membershipFee:true,
                annualMembershipAmount:123, phoneExt:'12345', emailAddress: command.emailAddress, email1:'user1@domain.com',
                email2: 'user2@domain.com', currency: 123, password: command.password, enabled: true, accountExpired: false, accountLocked: true, passwordExpired: false)
        if (user.validate()) {
            user.save(failOnError: true, flush: true)
        }

        def registrationCode = new RegistrationCode(username: user.emailAddress).save()
        String url = generateLink('verifyRegistration', [t: registrationCode.token])

        def conf = SpringSecurityUtils.securityConfig
        def body = conf.ui.register.emailBody
        if (body.contains('$')) {
            body = evaluate(body, [user: user, url: url])
        }
        mailService.sendMail {
            to command.emailAddress
            from conf.ui.register.emailFrom
            subject conf.ui.register.emailSubject
            html body.toString()
        }

        render view: '/login/institutionLogin', model: [emailSent: true]
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

        def user
        RegistrationCode.withTransaction { status ->
            user = MUser.findByEmailAddress(registrationCode.username)
            if (!user) {
                return
            }
            user.accountLocked = false
            user.save()
            for (roleName in conf.ui.register.defaultRoleNames) {
                UserRole.create(user, Role.findByAuthority(roleName))
            }
            registrationCode.delete()
        }

        if (!user) {
            flash.message = 'Invalid verification code found'
            redirect uri: defaultTargetUrl
            return
        }

        springSecurityService.reauthenticate(user.emailAddress)

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

        def user = MUser.findByEmailAddress(emailAddress)
        if (!user) {
            flash.message = 'No such email address registered with us.'
            return
        }

        def registrationCode = new RegistrationCode(username: user.emailAddress).save()

        String url = generateLink('resetPassword', [t: registrationCode.token])

        def conf = SpringSecurityUtils.securityConfig
        def body = conf.ui.forgotPassword.emailBody
        if (body.contains('$')) {
            body = evaluate(body, [user: user, url: url])
        }
        mailService.sendMail {
            to user.emailAddress
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
            def user = MUser.findByEmailAddress(registrationCode.username)
            user.password = command.password
            user.save()
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
//    String firstName
//    String middleName
//    String lastName
//    String address
//    Date dateOfBirth
//    String placeOfBirth
//    String countryOfBirth
//    String citizenship

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
class RegisterInstitution {
    String name
    String emailAddress
    String password
    String repeatPassword
//    String type
//    String address
//    String phone
//    String phoneExt
//    String email1
//    String email2
//    Boolean membershipFee
//    Float annualMembershipAmount
//    String currency

    static constraints = {
//        name blank: false, nullable: false
//        email1 nullable: false, blank: false, email: true
//        email2 nullable: false, blank: false, email: true
//        currency blank: false, nullable: false
//        phone maxSize: 12, nullable: false, unique: true
//        phoneExt maxSize: 14, nullable: false, unique: true
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
