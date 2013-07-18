package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MMatchController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MMatchInstanceList: MMatch.list(params), MMatchInstanceTotal: MMatch.count()]
    }

    def create() {
        [MMatchInstance: new MMatch(params)]
    }

    def save() {
        def MMatchInstance = new MMatch(params)
        if (!MMatchInstance.save(flush: true)) {
            render(view: "create", model: [MMatchInstance: MMatchInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MMatch.label', default: 'MMatch'), MMatchInstance.id])
        redirect(action: "show", id: MMatchInstance.id)
    }

    def show() {
        def MMatchInstance = MMatch.get(params.id)
        if (!MMatchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MMatch.label', default: 'MMatch'), params.id])
            redirect(action: "list")
            return
        }

        [MMatchInstance: MMatchInstance]
    }

    def edit() {
        def MMatchInstance = MMatch.get(params.id)
        if (!MMatchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MMatch.label', default: 'MMatch'), params.id])
            redirect(action: "list")
            return
        }

        [MMatchInstance: MMatchInstance]
    }

    def update() {
        def MMatchInstance = MMatch.get(params.id)
        if (!MMatchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MMatch.label', default: 'MMatch'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MMatchInstance.version > version) {
                MMatchInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MMatch.label', default: 'MMatch')] as Object[],
                        "Another user has updated this MMatch while you were editing")
                render(view: "edit", model: [MMatchInstance: MMatchInstance])
                return
            }
        }

        MMatchInstance.properties = params

        if (!MMatchInstance.save(flush: true)) {
            render(view: "edit", model: [MMatchInstance: MMatchInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MMatch.label', default: 'MMatch'), MMatchInstance.id])
        redirect(action: "show", id: MMatchInstance.id)
    }

    def delete() {
        def MMatchInstance = MMatch.get(params.id)
        if (!MMatchInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MMatch.label', default: 'MMatch'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MMatchInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MMatch.label', default: 'MMatch'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MMatch.label', default: 'MMatch'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
