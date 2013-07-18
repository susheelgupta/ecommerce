package com.officegain.enigma.website

import grails.converters.deep.JSON
import com.officegain.enigma.base.*

class AccountController {

    def index() {
        redirect(action: 'register')
    }

    def register() {
        [addressInstance: new Address(params)]
    }

    def getZoneList() {
        def countryId = params.id
        def zoneList = Zone.findAllByCountryId(countryId)

        render zoneList as JSON
    }

    def saveRegistration() {
        def Address addressInstance = new Address(params)
        addressInstance.customerId = 2
        addressInstance.countryId = 1
        addressInstance.zoneId = 2
        if (!addressInstance.save(flush: true, failOnError: true)) {
            render(view: "register", model: [addressInstance: addressInstance])
            return
        }
        def Customer customerInstance = new Customer(params)
        customerInstance.addressId = addressInstance.id
        customerInstance.storeId = addressInstance.id
        customerInstance.customerGroupId = 1
        customerInstance.approved = false
        customerInstance.status = true
        customerInstance.wishlist = "yes"
        customerInstance.token = "toll free"
        customerInstance.salt = "to"
        customerInstance.cart = "string"
        customerInstance.ip = "123.43.44.55.121"
        customerInstance.dateAdded = new Date()
        if (Customer.findByEmail(customerInstance.email)) {
            flash.message = message(code: 'website.com.officegain.userCreationFailed', args: [message(code: 'test.label', default: 'Test'), addressInstance.id])
            render(view: "register", model: [addressInstance: addressInstance])
            return
        }
        if (customerInstance.password.length()<4){
            flash.message = message(code: 'website.com.officegain.passwordLengthError', args: [message(code: 'test.label', default: 'Test'), addressInstance.id])
            render(view: "register", model: [addressInstance: addressInstance])
            return
        }
        if (!customerInstance.save(flush: true, failOnError: true)) {
            render(view: "register", model: [addressInstance: addressInstance])
        }
        def CustomerGroup customerGroupInstance = new CustomerGroup(params)
        customerGroupInstance.companyIdDisplay = customerInstance.id
        customerGroupInstance.approval = 3
        customerGroupInstance.companyIdRequired = customerInstance.id
        customerGroupInstance.sortOrder = 1
        customerGroupInstance.taxIdDisplay = customerInstance.id
        customerGroupInstance.taxIdRequired = customerInstance.id

        if (!customerGroupInstance.save(flush: true, failOnError: true)) {
            render(view: "register", model: [addressInstance: addressInstance])
        }
        def CustomerGroupDescription customerGroupDescriptionInstance = new CustomerGroupDescription(params)
        customerGroupDescriptionInstance.customerGroupId = customerGroupInstance.id
        customerGroupDescriptionInstance.languageId = customerGroupInstance.id
        customerGroupDescriptionInstance.description = "mela dilo ka aata hai"
        customerGroupDescriptionInstance.name = addressInstance.firstname
        if (!customerGroupDescriptionInstance.save(flush: true, failOnError: true)) {
            render(view: "register", model: [addressInstance: addressInstance])
        }
        def CustomerIp customerIpInstance = new CustomerIp(params)
        customerIpInstance.customerId = customerInstance.id
        customerIpInstance.dateAdded = new Date()
        customerIpInstance.ip = customerInstance.ip
        if (!customerIpInstance.save(flush: true, failOnError: true)) {
            render(view: "register", model: [addressInstance: addressInstance])
        }
        redirect(action: "success")
    }

    def success() {

    }
}
