package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MTournamentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MTournamentInstanceList: MTournament.list(params), MTournamentInstanceTotal: MTournament.count()]
    }

    def create() {
        [MTournamentInstance: new MTournament(params)]
    }

    def save() {
        def MTournamentInstance = new MTournament(params)
        if (!MTournamentInstance.save(flush: true)) {
            render(view: "create", model: [MTournamentInstance: MTournamentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MTournament.label', default: 'MTournament'), MTournamentInstance.id])
        redirect(action: "show", id: MTournamentInstance.id)
    }

    def show() {
        def MTournamentInstance = MTournament.get(params.id)
        if (!MTournamentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournament.label', default: 'MTournament'), params.id])
            redirect(action: "list")
            return
        }

        [MTournamentInstance: MTournamentInstance]
    }

    def edit() {
        def MTournamentInstance = MTournament.get(params.id)
        if (!MTournamentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournament.label', default: 'MTournament'), params.id])
            redirect(action: "list")
            return
        }

        [MTournamentInstance: MTournamentInstance]
    }

    def update() {
        def MTournamentInstance = MTournament.get(params.id)
        if (!MTournamentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournament.label', default: 'MTournament'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MTournamentInstance.version > version) {
                MTournamentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MTournament.label', default: 'MTournament')] as Object[],
                        "Another user has updated this MTournament while you were editing")
                render(view: "edit", model: [MTournamentInstance: MTournamentInstance])
                return
            }
        }

        MTournamentInstance.properties = params

        if (!MTournamentInstance.save(flush: true)) {
            render(view: "edit", model: [MTournamentInstance: MTournamentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MTournament.label', default: 'MTournament'), MTournamentInstance.id])
        redirect(action: "show", id: MTournamentInstance.id)
    }

    def delete() {
        def MTournamentInstance = MTournament.get(params.id)
        if (!MTournamentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournament.label', default: 'MTournament'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MTournamentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MTournament.label', default: 'MTournament'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MTournament.label', default: 'MTournament'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
