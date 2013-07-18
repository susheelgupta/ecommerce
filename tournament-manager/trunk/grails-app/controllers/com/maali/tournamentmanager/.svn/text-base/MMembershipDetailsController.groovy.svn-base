package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MMembershipDetailsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MMembershipDetailsInstanceList: MMembershipDetails.list(params), MMembershipDetailsInstanceTotal: MMembershipDetails.count()]
    }

    def create() {
        [MMembershipDetailsInstance: new MMembershipDetails(params)]
    }

    def save() {
        def MMembershipDetailsInstance = new MMembershipDetails(params)
        if (!MMembershipDetailsInstance.save(flush: true)) {
            render(view: "create", model: [MMembershipDetailsInstance: MMembershipDetailsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails'), MMembershipDetailsInstance.id])
        redirect(action: "show", id: MMembershipDetailsInstance.id)
    }

    def show() {
        def MMembershipDetailsInstance = MMembershipDetails.get(params.id)
        if (!MMembershipDetailsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails'), params.id])
            redirect(action: "list")
            return
        }

        [MMembershipDetailsInstance: MMembershipDetailsInstance]
    }

    def edit() {
        def MMembershipDetailsInstance = MMembershipDetails.get(params.id)
        if (!MMembershipDetailsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails'), params.id])
            redirect(action: "list")
            return
        }

        [MMembershipDetailsInstance: MMembershipDetailsInstance]
    }

    def update() {
        def MMembershipDetailsInstance = MMembershipDetails.get(params.id)
        if (!MMembershipDetailsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MMembershipDetailsInstance.version > version) {
                MMembershipDetailsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails')] as Object[],
                        "Another user has updated this MMembershipDetails while you were editing")
                render(view: "edit", model: [MMembershipDetailsInstance: MMembershipDetailsInstance])
                return
            }
        }

        MMembershipDetailsInstance.properties = params

        if (!MMembershipDetailsInstance.save(flush: true)) {
            render(view: "edit", model: [MMembershipDetailsInstance: MMembershipDetailsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails'), MMembershipDetailsInstance.id])
        redirect(action: "show", id: MMembershipDetailsInstance.id)
    }

    def delete() {
        def MMembershipDetailsInstance = MMembershipDetails.get(params.id)
        if (!MMembershipDetailsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MMembershipDetailsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MMembershipDetails.label', default: 'MMembershipDetails'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
