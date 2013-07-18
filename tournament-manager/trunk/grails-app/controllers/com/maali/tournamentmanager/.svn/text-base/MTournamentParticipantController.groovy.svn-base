package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MTournamentParticipantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MTournamentParticipantInstanceList: MTournamentParticipant.list(params), MTournamentParticipantInstanceTotal: MTournamentParticipant.count()]
    }

    def create() {
        [MTournamentParticipantInstance: new MTournamentParticipant(params)]
    }

    def save() {
        def MTournamentParticipantInstance = new MTournamentParticipant(params)
        if (!MTournamentParticipantInstance.save(flush: true)) {
            render(view: "create", model: [MTournamentParticipantInstance: MTournamentParticipantInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant'), MTournamentParticipantInstance.id])
        redirect(action: "show", id: MTournamentParticipantInstance.id)
    }

    def show() {
        def MTournamentParticipantInstance = MTournamentParticipant.get(params.id)
        if (!MTournamentParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant'), params.id])
            redirect(action: "list")
            return
        }

        [MTournamentParticipantInstance: MTournamentParticipantInstance]
    }

    def edit() {
        def MTournamentParticipantInstance = MTournamentParticipant.get(params.id)
        if (!MTournamentParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant'), params.id])
            redirect(action: "list")
            return
        }

        [MTournamentParticipantInstance: MTournamentParticipantInstance]
    }

    def update() {
        def MTournamentParticipantInstance = MTournamentParticipant.get(params.id)
        if (!MTournamentParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MTournamentParticipantInstance.version > version) {
                MTournamentParticipantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant')] as Object[],
                        "Another user has updated this MTournamentParticipant while you were editing")
                render(view: "edit", model: [MTournamentParticipantInstance: MTournamentParticipantInstance])
                return
            }
        }

        MTournamentParticipantInstance.properties = params

        if (!MTournamentParticipantInstance.save(flush: true)) {
            render(view: "edit", model: [MTournamentParticipantInstance: MTournamentParticipantInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant'), MTournamentParticipantInstance.id])
        redirect(action: "show", id: MTournamentParticipantInstance.id)
    }

    def delete() {
        def MTournamentParticipantInstance = MTournamentParticipant.get(params.id)
        if (!MTournamentParticipantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MTournamentParticipantInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MTournamentParticipant.label', default: 'MTournamentParticipant'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
