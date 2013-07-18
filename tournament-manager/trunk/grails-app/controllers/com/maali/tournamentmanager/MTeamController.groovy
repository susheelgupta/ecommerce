package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MTeamController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MTeamInstanceList: MTeam.list(params), MTeamInstanceTotal: MTeam.count()]
    }

    def create() {
        [MTeamInstance: new MTeam(params)]
    }

    def save() {
        def MTeamInstance = new MTeam(params)
        if (!MTeamInstance.save(flush: true)) {
            render(view: "create", model: [MTeamInstance: MTeamInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MTeam.label', default: 'MTeam'), MTeamInstance.id])
        redirect(action: "show", id: MTeamInstance.id)
    }

    def show() {
        def MTeamInstance = MTeam.get(params.id)
        if (!MTeamInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTeam.label', default: 'MTeam'), params.id])
            redirect(action: "list")
            return
        }

        [MTeamInstance: MTeamInstance]
    }

    def edit() {
        def MTeamInstance = MTeam.get(params.id)
        if (!MTeamInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTeam.label', default: 'MTeam'), params.id])
            redirect(action: "list")
            return
        }

        [MTeamInstance: MTeamInstance]
    }

    def update() {
        def MTeamInstance = MTeam.get(params.id)
        if (!MTeamInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTeam.label', default: 'MTeam'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MTeamInstance.version > version) {
                MTeamInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MTeam.label', default: 'MTeam')] as Object[],
                        "Another user has updated this MTeam while you were editing")
                render(view: "edit", model: [MTeamInstance: MTeamInstance])
                return
            }
        }

        MTeamInstance.properties = params

        if (!MTeamInstance.save(flush: true)) {
            render(view: "edit", model: [MTeamInstance: MTeamInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MTeam.label', default: 'MTeam'), MTeamInstance.id])
        redirect(action: "show", id: MTeamInstance.id)
    }

    def delete() {
        def MTeamInstance = MTeam.get(params.id)
        if (!MTeamInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTeam.label', default: 'MTeam'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MTeamInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MTeam.label', default: 'MTeam'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MTeam.label', default: 'MTeam'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
