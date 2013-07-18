package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class ReturnReasonController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def ReturnReasonInstanceList = ReturnReason.list()
        [returnReasonInstance: ReturnReasonInstanceList]
    }

    def create() {
        [returnReasonInstance: new ReturnReason(params)]
    }

    def save() {
        ReturnReason returnReasonInstance = new ReturnReason(params)
        returnReasonInstance.languageId = 1
        if (!returnReasonInstance.save(validate: false, flush: true)) {
            render(view: "create", model: [returnReasonInstance: returnReasonInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def returnReasonInstance = ReturnReason.findByReturnReasonId(params.id)
        if (!returnReasonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'returnReason.label', default: 'ReturnReason'), params.id])
            return
        }
        [returnReasonInstance: returnReasonInstance]
    }

    def update() {
        def returnReasonInstance = ReturnReason.findByReturnReasonId(params.id)
        if (!returnReasonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'returnReason.label', default: 'ReturnReason'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (returnReasonInstance.version > version) {
                returnReasonInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'returnReason.label', default: 'ReturnReason')] as Object[],
                        "Another user has updated this ReturnReason while you were editing")
                render(view: "create", model: [returnReasonInstance: returnReasonInstance])
                return
            }
        }

        returnReasonInstance.properties = params

        if (!returnReasonInstance.save(validate: false, flush: true, failOnError: true)) {
            render(view: "create", model: [returnReasonInstance: returnReasonInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'returnReason.label', default: 'ReturnReason'), returnReasonInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.returnReasonIds != '') {
            String[] returnReasonIds = params.returnReasonIds.split(",")
            returnReasonIds.each {it ->
                ReturnReason.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
