package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MLeagueController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MLeagueInstanceList: MLeague.list(params), MLeagueInstanceTotal: MLeague.count()]
    }

    def create() {
        [MLeagueInstance: new MLeague(params)]
    }

    def save() {
        def MLeagueInstance = new MLeague(params)
        if (!MLeagueInstance.save(flush: true)) {
            render(view: "create", model: [MLeagueInstance: MLeagueInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MLeague.label', default: 'MLeague'), MLeagueInstance.id])
        redirect(action: "show", id: MLeagueInstance.id)
    }

    def show() {
        def MLeagueInstance = MLeague.get(params.id)
        if (!MLeagueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeague.label', default: 'MLeague'), params.id])
            redirect(action: "list")
            return
        }

        [MLeagueInstance: MLeagueInstance]
    }

    def edit() {
        def MLeagueInstance = MLeague.get(params.id)
        if (!MLeagueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeague.label', default: 'MLeague'), params.id])
            redirect(action: "list")
            return
        }

        [MLeagueInstance: MLeagueInstance]
    }

    def update() {
        def MLeagueInstance = MLeague.get(params.id)
        if (!MLeagueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeague.label', default: 'MLeague'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MLeagueInstance.version > version) {
                MLeagueInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MLeague.label', default: 'MLeague')] as Object[],
                        "Another user has updated this MLeague while you were editing")
                render(view: "edit", model: [MLeagueInstance: MLeagueInstance])
                return
            }
        }

        MLeagueInstance.properties = params

        if (!MLeagueInstance.save(flush: true)) {
            render(view: "edit", model: [MLeagueInstance: MLeagueInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MLeague.label', default: 'MLeague'), MLeagueInstance.id])
        redirect(action: "show", id: MLeagueInstance.id)
    }

    def delete() {
        def MLeagueInstance = MLeague.get(params.id)
        if (!MLeagueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeague.label', default: 'MLeague'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MLeagueInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MLeague.label', default: 'MLeague'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MLeague.label', default: 'MLeague'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
