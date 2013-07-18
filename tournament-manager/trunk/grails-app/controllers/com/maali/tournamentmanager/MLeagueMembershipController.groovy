package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MLeagueMembershipController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MLeagueMembershipInstanceList: MLeagueMembership.list(params), MLeagueMembershipInstanceTotal: MLeagueMembership.count()]
    }

    def create() {
        [MLeagueMembershipInstance: new MLeagueMembership(params)]
    }

    def save() {
        def MLeagueMembershipInstance = new MLeagueMembership(params)
        if (!MLeagueMembershipInstance.save(flush: true)) {
            render(view: "create", model: [MLeagueMembershipInstance: MLeagueMembershipInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership'), MLeagueMembershipInstance.id])
        redirect(action: "show", id: MLeagueMembershipInstance.id)
    }

    def show() {
        def MLeagueMembershipInstance = MLeagueMembership.get(params.id)
        if (!MLeagueMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership'), params.id])
            redirect(action: "list")
            return
        }

        [MLeagueMembershipInstance: MLeagueMembershipInstance]
    }

    def edit() {
        def MLeagueMembershipInstance = MLeagueMembership.get(params.id)
        if (!MLeagueMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership'), params.id])
            redirect(action: "list")
            return
        }

        [MLeagueMembershipInstance: MLeagueMembershipInstance]
    }

    def update() {
        def MLeagueMembershipInstance = MLeagueMembership.get(params.id)
        if (!MLeagueMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MLeagueMembershipInstance.version > version) {
                MLeagueMembershipInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership')] as Object[],
                        "Another user has updated this MLeagueMembership while you were editing")
                render(view: "edit", model: [MLeagueMembershipInstance: MLeagueMembershipInstance])
                return
            }
        }

        MLeagueMembershipInstance.properties = params

        if (!MLeagueMembershipInstance.save(flush: true)) {
            render(view: "edit", model: [MLeagueMembershipInstance: MLeagueMembershipInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership'), MLeagueMembershipInstance.id])
        redirect(action: "show", id: MLeagueMembershipInstance.id)
    }

    def delete() {
        def MLeagueMembershipInstance = MLeagueMembership.get(params.id)
        if (!MLeagueMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MLeagueMembershipInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MLeagueMembership.label', default: 'MLeagueMembership'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
