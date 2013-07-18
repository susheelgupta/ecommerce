package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class ReturnController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [returnInstanceList: Return.list(params), returnInstanceTotal: Return.count()]
    }

    def create() {
        [returnInstance: new Return(params)]
    }

    def save() {
        def returnInstance = new Return(params)
        if (!returnInstance.save(flush: true)) {
            render(view: "create", model: [returnInstance: returnInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'return.label', default: 'Return'), returnInstance.id])
        redirect(action: "show", id: returnInstance.id)
    }

    def show() {
        def returnInstance = Return.get(params.id)
        if (!returnInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'return.label', default: 'Return'), params.id])
            redirect(action: "list")
            return
        }

        [returnInstance: returnInstance]
    }

    def edit() {
        def returnInstance = Return.get(params.id)
        if (!returnInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'return.label', default: 'Return'), params.id])
            redirect(action: "list")
            return
        }

        [returnInstance: returnInstance]
    }

    def update() {
        def returnInstance = Return.get(params.id)
        if (!returnInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'return.label', default: 'Return'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (returnInstance.version > version) {
                returnInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'return.label', default: 'Return')] as Object[],
                        "Another user has updated this Return while you were editing")
                render(view: "edit", model: [returnInstance: returnInstance])
                return
            }
        }

        returnInstance.properties = params

        if (!returnInstance.save(flush: true)) {
            render(view: "edit", model: [returnInstance: returnInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'return.label', default: 'Return'), returnInstance.id])
        redirect(action: "show", id: returnInstance.id)
    }

    def delete() {
        def returnInstance = Return.get(params.id)
        if (!returnInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'return.label', default: 'Return'), params.id])
            redirect(action: "list")
            return
        }

        try {
            returnInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'return.label', default: 'Return'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'return.label', default: 'Return'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
