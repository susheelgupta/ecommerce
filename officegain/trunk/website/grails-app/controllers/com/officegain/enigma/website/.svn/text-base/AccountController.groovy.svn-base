package com.officegain.enigma.website

import com.officegain.enigma.base.AddressBook
import com.officegain.enigma.base.Country
import com.officegain.enigma.base.Customer

class AccountController {
    def springSecurityService

    def index() {
        render(view: "index", model: [userDetailsCommand: new UserDetailsCommand(getCurrentCustomer()), changePasswordCommand: new ChangePasswordCommand()])
    }

    def passwordUpdate = {ChangePasswordCommand changePasswordCommand ->
        if (changePasswordCommand.hasErrors()) {
            render(view: "index", model: [changePasswordCommand: changePasswordCommand, userDetailsCommand: new UserDetailsCommand(getCurrentCustomer())])
            return
        }
        def encryptedPassword = encodePassword(changePasswordCommand.password)
        def customerInstance = getCurrentCustomer()
        if (!encryptedPassword.equals(customerInstance.password)) {
            flash.message = 'You old password does not matches with our records.'
            render(view: "index", model: [changePasswordCommand: changePasswordCommand, userDetailsCommand: new UserDetailsCommand(getCurrentCustomer())])
            return
        }
        customerInstance.password = changePasswordCommand.newPassword
        customerInstance.save(flush: true, errors: true)
        flash.message = "Your password is updated successfully."
        redirect(action: "index")
    }

    def updateUserDetails = {UserDetailsCommand userDetailsCommand ->
        if (userDetailsCommand.hasErrors()) {
            render(view: "index", model: [userDetailsCommand: userDetailsCommand, changePasswordCommand: new ChangePasswordCommand()])
            return
        }
        def customerInstance = getCurrentCustomer()
        customerInstance.properties = params
        customerInstance.save(flush: true, errors: true)
        flash.message = 'Your details have been updated'
        redirect(action: "index")
    }

    def address() {
        def addressInstances = getCurrentCustomer().addressBooks
        render(view: "address", model: [addressInstances: addressInstances])
    }

    def addAddress = { AddressCommand command ->
        if (command.hasErrors()) {
            render(view: "address", model: [command: command, addressInstances: getCurrentCustomer().addressBooks])
            return
        }
        def customerInstance = getCurrentCustomer()
        def addressInstance = new AddressBook()
        addressInstance.city = params.city
        addressInstance.firstName = params.firstName
        addressInstance.country = Country.get(params.country)
        addressInstance.streetAddress = params.streetAddress
        addressInstance.postalCode = params.postalCode
        addressInstance.state = params.state
        addressInstance.telephone = params.telephone
        addressInstance.customer = getCurrentCustomer()
        addressInstance.save(flush: true, failOnError: true)
        customerInstance.addToAddressBooks(addressInstance)
        customerInstance.save(failOnError: true, flush: true)
        flash.message = 'Address added successfully'
        redirect(action: 'address')
    }

    def deleteAddress() {
        def addressInstance = AddressBook.get(params.id)
        getCurrentCustomer().removeFromAddressBooks(addressInstance)
        addressInstance.delete()
        getCurrentCustomer().save(failOnError: true, flush: true)
        flash.message = 'Address deleted successfully'
        redirect(action: 'address')
    }

    def orders() {
        def orderInstances = getCurrentCustomer().orders
        [orderInstances: orderInstances]
    }

    def getCurrentCustomer() {
        return Customer.get(springSecurityService.principal.id)
    }

    protected String encodePassword(String password) {
        return springSecurityService.encodePassword(password)
    }

    static final numericValidator = {value, command ->
        if (!value.matches('^.\\p{Digit}+$')) {
            return 'addressCommad.numericValidation.failed'
        }
    }

    static final alphaValidator = {value, command ->
        if (!value.matches('^.\\p{Alpha}+$')) {
            return 'addressCommad.alphabetValidation.failed'
        }
    }

    static final newPasswordValidator = {String newPassword, command ->
        if (newPassword && (newPassword.length() < 8 || newPassword.length() > 64) || (!newPassword.matches('^.*\\p{Alpha}.*$') || !newPassword.matches('^.*\\p{Digit}.*$') || !newPassword.matches('^.*[!@#$%^&].*$'))) {
            return 'command.password.error.strength'
        }
    }

    static final repeatPasswordValidator = { value, command ->
        if (command.newPassword != command.repeatPassword) {
            return 'command.password2.error.mismatch'
        }
    }
}
class AddressCommand {
    String firstName
    String streetAddress
    String city
    String state
    String postalCode
    String telephone

    static constraints = {
        firstName blank: false, nullable: false, validator: AccountController.alphaValidator
        streetAddress blank: false, nullable: false
        city blank: false, nullable: false, validator: AccountController.alphaValidator
        state blank: false, nullable: false, notEqual: "default"
        postalCode blank: false, nullable: false, maxSize: 6, validator: AccountController.numericValidator
        telephone blank: false, nullable: false, minSize: 10, maxSize: 10, validator: AccountController.numericValidator
    }
}

class ChangePasswordCommand {
    String password
    String newPassword
    String repeatPassword

    static constraints = {
        password blank: false, nullable: false
        newPassword blank: false, nullable: false, validator: AccountController.newPasswordValidator
        repeatPassword validator: AccountController.repeatPasswordValidator
    }
}

class UserDetailsCommand {
    String firstName
    String lastName
    String gender
    String telephone

    public UserDetailsCommand() {
        firstName = ""
        lastName = ""
        gender = ""
        telephone = ""
    }

    public UserDetailsCommand(Customer customer) {
        firstName = customer.firstName
        lastName = customer.lastName
        gender = customer.gender
        telephone = customer.telephone
    }

    static constraints = {
        firstName blank: false, nullable: false, validator: AccountController.alphaValidator
        lastName blank: false, nullable: false, validator: AccountController.alphaValidator
        gender blank: false, nullable: false, maxSize: 1, inList: ['M', 'F']
        telephone blank: false, nullable: false, minSize: 10, maxSize: 10, validator: AccountController.numericValidator
    }
}
