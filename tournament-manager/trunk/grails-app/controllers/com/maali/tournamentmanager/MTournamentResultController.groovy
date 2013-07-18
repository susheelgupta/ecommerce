package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MTournamentResultController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MTournamentResultInstanceList: MTournamentResult.list(params), MTournamentResultInstanceTotal: MTournamentResult.count()]
    }

    def create() {
        [MTournamentResultInstance: new MTournamentResult(params)]
    }

    def save() {
        def MTournamentResultInstance = new MTournamentResult(params)
        if (!MTournamentResultInstance.save(flush: true)) {
            render(view: "create", model: [MTournamentResultInstance: MTournamentResultInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MTournamentResult.label', default: 'MTournamentResult'), MTournamentResultInstance.id])
        redirect(action: "show", id: MTournamentResultInstance.id)
    }

    def show() {
        def MTournamentResultInstance = MTournamentResult.get(params.id)
        if (!MTournamentResultInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournamentResult.label', default: 'MTournamentResult'), params.id])
            redirect(action: "list")
            return
        }

        [MTournamentResultInstance: MTournamentResultInstance]
    }

    def edit() {
        def MTournamentResultInstance = MTournamentResult.get(params.id)
        if (!MTournamentResultInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournamentResult.label', default: 'MTournamentResult'), params.id])
            redirect(action: "list")
            return
        }

        [MTournamentResultInstance: MTournamentResultInstance]
    }

    def update() {
        def MTournamentResultInstance = MTournamentResult.get(params.id)
        if (!MTournamentResultInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournamentResult.label', default: 'MTournamentResult'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MTournamentResultInstance.version > version) {
                MTournamentResultInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MTournamentResult.label', default: 'MTournamentResult')] as Object[],
                        "Another user has updated this MTournamentResult while you were editing")
                render(view: "edit", model: [MTournamentResultInstance: MTournamentResultInstance])
                return
            }
        }

        MTournamentResultInstance.properties = params

        if (!MTournamentResultInstance.save(flush: true)) {
            render(view: "edit", model: [MTournamentResultInstance: MTournamentResultInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MTournamentResult.label', default: 'MTournamentResult'), MTournamentResultInstance.id])
        redirect(action: "show", id: MTournamentResultInstance.id)
    }

    def delete() {
        def MTournamentResultInstance = MTournamentResult.get(params.id)
        if (!MTournamentResultInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournamentResult.label', default: 'MTournamentResult'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MTournamentResultInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MTournamentResult.label', default: 'MTournamentResult'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MTournamentResult.label', default: 'MTournamentResult'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
