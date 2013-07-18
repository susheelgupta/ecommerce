package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MTeamMembershipController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MTeamMembershipInstanceList: MTeamMembership.list(params), MTeamMembershipInstanceTotal: MTeamMembership.count()]
    }

    def create() {
        [MTeamMembershipInstance: new MTeamMembership(params)]
    }

    def save() {
        def MTeamMembershipInstance = new MTeamMembership(params)
        if (!MTeamMembershipInstance.save(flush: true)) {
            render(view: "create", model: [MTeamMembershipInstance: MTeamMembershipInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MTeamMembership.label', default: 'MTeamMembership'), MTeamMembershipInstance.id])
        redirect(action: "show", id: MTeamMembershipInstance.id)
    }

    def show() {
        def MTeamMembershipInstance = MTeamMembership.get(params.id)
        if (!MTeamMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTeamMembership.label', default: 'MTeamMembership'), params.id])
            redirect(action: "list")
            return
        }

        [MTeamMembershipInstance: MTeamMembershipInstance]
    }

    def edit() {
        def MTeamMembershipInstance = MTeamMembership.get(params.id)
        if (!MTeamMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTeamMembership.label', default: 'MTeamMembership'), params.id])
            redirect(action: "list")
            return
        }

        [MTeamMembershipInstance: MTeamMembershipInstance]
    }

    def update() {
        def MTeamMembershipInstance = MTeamMembership.get(params.id)
        if (!MTeamMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTeamMembership.label', default: 'MTeamMembership'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MTeamMembershipInstance.version > version) {
                MTeamMembershipInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MTeamMembership.label', default: 'MTeamMembership')] as Object[],
                        "Another user has updated this MTeamMembership while you were editing")
                render(view: "edit", model: [MTeamMembershipInstance: MTeamMembershipInstance])
                return
            }
        }

        MTeamMembershipInstance.properties = params

        if (!MTeamMembershipInstance.save(flush: true)) {
            render(view: "edit", model: [MTeamMembershipInstance: MTeamMembershipInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MTeamMembership.label', default: 'MTeamMembership'), MTeamMembershipInstance.id])
        redirect(action: "show", id: MTeamMembershipInstance.id)
    }

    def delete() {
        def MTeamMembershipInstance = MTeamMembership.get(params.id)
        if (!MTeamMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MTeamMembership.label', default: 'MTeamMembership'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MTeamMembershipInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MTeamMembership.label', default: 'MTeamMembership'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MTeamMembership.label', default: 'MTeamMembership'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
