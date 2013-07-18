package com.officegain.enigma.base

class ReturnStatusController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def ReturnStatusInstanceList = ReturnStatus.list()
        [returnStatusInstance: ReturnStatusInstanceList]
    }

    def create() {
        [returnStatusInstance: new ReturnStatus(params)]
    }

    def save() {
        ReturnStatus returnStatusInstance = new ReturnStatus(params)
        returnStatusInstance.languageId = 1
        if (!returnStatusInstance.save(validate: false, flush: true)) {
            render(view: "create", model: [returnStatusInstance: returnStatusInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def returnStatusInstance = ReturnStatus.findByReturnStatusId(params.id)
        if (!returnStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'returnStatus.label', default: 'ReturnStatus'), params.id])
            return
        }
        [returnStatusInstance: returnStatusInstance]
    }

    def update() {
        def returnStatusInstance = ReturnStatus.findByReturnStatusId(params.id)
        if (!returnStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'returnStatus.label', default: 'ReturnStatus'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (returnStatusInstance.version > version) {
                returnStatusInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'returnStatus.label', default: 'ReturnStatus')] as Object[],
                        "Another user has updated this ReturnStatus while you were editing")
                render(view: "create", model: [returnStatusInstance: returnStatusInstance])
                return
            }
        }

        returnStatusInstance.properties = params

        if (!returnStatusInstance.save(validate: false, flush: true, failOnError: true)) {
            render(view: "create", model: [returnStatusInstance: returnStatusInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'returnStatus.label', default: 'ReturnStatus'), returnStatusInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.returnStatusIds != '') {
            String[] returnStatusIds = params.returnStatusIds.split(",")
            returnStatusIds.each {it ->
                ReturnStatus.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
