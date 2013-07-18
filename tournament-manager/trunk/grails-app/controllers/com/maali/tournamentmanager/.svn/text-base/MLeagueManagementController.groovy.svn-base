package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MLeagueManagementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MLeagueManagementInstanceList: MLeagueManagement.list(params), MLeagueManagementInstanceTotal: MLeagueManagement.count()]
    }

    def create() {
        [MLeagueManagementInstance: new MLeagueManagement(params)]
    }

    def save() {
        def MLeagueManagementInstance = new MLeagueManagement(params)
        if (!MLeagueManagementInstance.save(flush: true)) {
            render(view: "create", model: [MLeagueManagementInstance: MLeagueManagementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement'), MLeagueManagementInstance.id])
        redirect(action: "show", id: MLeagueManagementInstance.id)
    }

    def show() {
        def MLeagueManagementInstance = MLeagueManagement.get(params.id)
        if (!MLeagueManagementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement'), params.id])
            redirect(action: "list")
            return
        }

        [MLeagueManagementInstance: MLeagueManagementInstance]
    }

    def edit() {
        def MLeagueManagementInstance = MLeagueManagement.get(params.id)
        if (!MLeagueManagementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement'), params.id])
            redirect(action: "list")
            return
        }

        [MLeagueManagementInstance: MLeagueManagementInstance]
    }

    def update() {
        def MLeagueManagementInstance = MLeagueManagement.get(params.id)
        if (!MLeagueManagementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MLeagueManagementInstance.version > version) {
                MLeagueManagementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement')] as Object[],
                        "Another user has updated this MLeagueManagement while you were editing")
                render(view: "edit", model: [MLeagueManagementInstance: MLeagueManagementInstance])
                return
            }
        }

        MLeagueManagementInstance.properties = params

        if (!MLeagueManagementInstance.save(flush: true)) {
            render(view: "edit", model: [MLeagueManagementInstance: MLeagueManagementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement'), MLeagueManagementInstance.id])
        redirect(action: "show", id: MLeagueManagementInstance.id)
    }

    def delete() {
        def MLeagueManagementInstance = MLeagueManagement.get(params.id)
        if (!MLeagueManagementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MLeagueManagementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MLeagueManagement.label', default: 'MLeagueManagement'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
