package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class CustomerGroupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def customerGroupList = CustomerGroup.list();
        def customerGroupDescriptionMap = new HashMap<CustomerGroup, CustomerGroupDescription>()
        for (CustomerGroup customerGroup: customerGroupList) {
            CustomerGroupDescription customerGroupDescription = CustomerGroupDescription.findByCustomerGroupId(customerGroup.id)
            customerGroupDescriptionMap.put(customerGroup, customerGroupDescription)
        }
        [customerGroupDescriptionMap: customerGroupDescriptionMap]
    }

    def create() {
        [customerGroupInstance: new CustomerGroup(params)]
    }

    def save() {
        def customerGroupInstance = new CustomerGroup(params)
        if (!customerGroupInstance.save(flush: true)) {
            render(view: "create", model: [customerGroupInstance: customerGroupInstance])
            return
        }
        def CustomerGroupDescription customerGroupDescriptionInstance = new CustomerGroupDescription(params)
        customerGroupDescriptionInstance.customerGroupId = customerGroupInstance.id
        customerGroupDescriptionInstance.languageId = 1
        if (!customerGroupDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [customerGroupInstance: customerGroupInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'customerGroup.label', default: 'CustomerGroup'), customerGroupInstance.id])
        redirect(action: "list")
    }

    def show() {
        def customerGroupInstance = CustomerGroup.get(params.id)
        if (!customerGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerGroup.label', default: 'CustomerGroup'), params.id])
            return
        }
        def CustomerGroupDescription customerGroupDescriptionInstance = CustomerGroupDescription.findByCustomerGroupId(params.id)
        if (!customerGroupDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerGroup.label', default: 'CustomerGroup'), params.id])
            return
        }
        [customerGroupInstance: customerGroupInstance, customerGroupDescriptionInstance: customerGroupDescriptionInstance]
    }

    def update() {
        def customerGroupInstance = CustomerGroup.get(params.id)
        if (!customerGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerGroup.label', default: 'CustomerGroup'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (customerGroupInstance.version > version) {
                customerGroupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'customerGroup.label', default: 'CustomerGroup')] as Object[],
                        "Another user has updated this CustomerGroup while you were editing")
                render(view: "create", model: [customerGroupInstance: customerGroupInstance])
                return
            }
        }

        customerGroupInstance.properties = params

        if (!customerGroupInstance.save(flush: true)) {
            render(view: "list", model: [customerGroupInstance: customerGroupInstance])
            return
        }

        def CustomerGroupDescription customerGroupDescriptionInstance = CustomerGroupDescription.findByCustomerGroupId(params.id)
        if (!customerGroupDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerGroup.label', default: 'CustomerGroup'), params.id])
            return
        }
        customerGroupDescriptionInstance.properties = params
        if (!customerGroupDescriptionInstance.save(flush: true)) {
            render(view: "list", model: [customerGroupInstance: customerGroupInstance, customerGroupDescriptionInstance: customerGroupDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'customerGroup.label', default: 'CustomerGroup'), customerGroupInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.customerGroupIds != '') {
            String[] customerGroupIds = params.customerGroupIds.split(",")
            customerGroupIds.each {it ->
                CustomerGroup.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
