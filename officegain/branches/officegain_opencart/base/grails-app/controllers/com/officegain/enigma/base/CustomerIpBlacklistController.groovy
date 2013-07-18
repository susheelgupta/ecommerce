package com.officegain.enigma.base

class CustomerIpBlacklistController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def CustomerIpBlacklistInstanceList = CustomerIpBlacklist.list()
        [customerIpBlacklistInstance: CustomerIpBlacklistInstanceList]
    }

    def create() {
        [customerIpBlacklistInstance: new CustomerIpBlacklist(params)]
    }

    def save() {
        def customerIpBlacklistInstance = new CustomerIpBlacklist(params)
        if (!customerIpBlacklistInstance.save(flush: true)) {
            render(view: "create", model: [customerIpBlacklistInstance: customerIpBlacklistInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'customerIpBlacklist.label', default: 'CustomerIpBlacklist'), customerIpBlacklistInstance.id])
        redirect(action: "list")
    }

    def show() {
        def customerIpBlacklistInstance = CustomerIpBlacklist.get(params.id)
        if (!customerIpBlacklistInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerIpBlacklist.label', default: 'CustomerIpBlacklist'), params.id])
            return
        }

        [customerIpBlacklistInstance: customerIpBlacklistInstance]
    }

    def update() {
        def customerIpBlacklistInstance = CustomerIpBlacklist.get(params.id)
        if (!customerIpBlacklistInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerIpBlacklist.label', default: 'CustomerIpBlacklist'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (customerIpBlacklistInstance.version > version) {
                customerIpBlacklistInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'customerIpBlacklist.label', default: 'CustomerIpBlacklist')] as Object[],
                        "Another user has updated this CustomerIpBlacklist while you were editing")
                render(view: "create", model: [customerIpBlacklistInstance: customerIpBlacklistInstance])
                return
            }
        }

        customerIpBlacklistInstance.properties = params

        if (!customerIpBlacklistInstance.save(flush: true)) {
            render(view: "create", model: [customerIpBlacklistInstance: customerIpBlacklistInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'customerIpBlacklist.label', default: 'CustomerIpBlacklist'), customerIpBlacklistInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.Ids != '') {
            String[] Ids = params.Ids.split(",")
            Ids.each {it ->
                CustomerIpBlacklist.get(Long.parseLong(it)).delete()
            }
            redirect(action: "list")
        }
    }
}
