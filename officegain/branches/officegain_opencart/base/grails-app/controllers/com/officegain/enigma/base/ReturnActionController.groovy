package com.officegain.enigma.base

class ReturnActionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def ReturnActionInstanceList = ReturnAction.list()
        [returnActionInstance: ReturnActionInstanceList]
    }

    def create() {
        [returnActionInstance: new ReturnAction(params)]
    }

    def save() {
        ReturnAction returnActionInstance = new ReturnAction(params)
        returnActionInstance.languageId = 1
        if (!returnActionInstance.save(validate: false, flush: true)) {
            render(view: "create", model: [returnActionInstance: returnActionInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def returnActionInstance = ReturnAction.findByReturnActionId(params.id)
        if (!returnActionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'returnAction.label', default: 'ReturnAction'), params.id])
            return
        }
        [returnActionInstance: returnActionInstance]
    }

    def update() {
        def returnActionInstance = ReturnAction.findByReturnActionId(params.id)
        if (!returnActionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'returnAction.label', default: 'ReturnAction'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (returnActionInstance.version > version) {
                returnActionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'returnAction.label', default: 'ReturnAction')] as Object[],
                        "Another user has updated this ReturnAction while you were editing")
                render(view: "create", model: [returnActionInstance: returnActionInstance])
                return
            }
        }

        returnActionInstance.properties = params

        if (!returnActionInstance.save(validate: false, flush: true, failOnError: true)) {
            render(view: "create", model: [returnActionInstance: returnActionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'returnAction.label', default: 'ReturnAction'), returnActionInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.returnActionIds != '') {
            String[] returnActionIds = params.returnActionIds.split(",")
            returnActionIds.each {it ->
                ReturnAction.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
