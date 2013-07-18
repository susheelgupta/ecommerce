package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MSportController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MSportInstanceList: MSport.list(params), MSportInstanceTotal: MSport.count()]
    }

    def create() {
        [MSportInstance: new MSport(params)]
    }

    def save() {
        def MSportInstance = new MSport(params)
        if (!MSportInstance.save(flush: true)) {
            render(view: "create", model: [MSportInstance: MSportInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MSport.label', default: 'MSport'), MSportInstance.id])
        redirect(action: "show", id: MSportInstance.id)
    }

    def show() {
        def MSportInstance = MSport.get(params.id)
        if (!MSportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MSport.label', default: 'MSport'), params.id])
            redirect(action: "list")
            return
        }

        [MSportInstance: MSportInstance]
    }

    def edit() {
        def MSportInstance = MSport.get(params.id)
        if (!MSportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MSport.label', default: 'MSport'), params.id])
            redirect(action: "list")
            return
        }

        [MSportInstance: MSportInstance]
    }

    def update() {
        def MSportInstance = MSport.get(params.id)
        if (!MSportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MSport.label', default: 'MSport'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MSportInstance.version > version) {
                MSportInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MSport.label', default: 'MSport')] as Object[],
                        "Another user has updated this MSport while you were editing")
                render(view: "edit", model: [MSportInstance: MSportInstance])
                return
            }
        }

        MSportInstance.properties = params

        if (!MSportInstance.save(flush: true)) {
            render(view: "edit", model: [MSportInstance: MSportInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MSport.label', default: 'MSport'), MSportInstance.id])
        redirect(action: "show", id: MSportInstance.id)
    }

    def delete() {
        def MSportInstance = MSport.get(params.id)
        if (!MSportInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MSport.label', default: 'MSport'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MSportInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MSport.label', default: 'MSport'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MSport.label', default: 'MSport'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
