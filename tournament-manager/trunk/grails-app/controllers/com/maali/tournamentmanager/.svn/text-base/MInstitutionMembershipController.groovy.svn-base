package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MInstitutionMembershipController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MInstitutionMembershipInstanceList: MInstitutionMembership.list(params), MInstitutionMembershipInstanceTotal: MInstitutionMembership.count()]
    }

    def create() {
        [MInstitutionMembershipInstance: new MInstitutionMembership(params)]
    }

    def save() {
        def MInstitutionMembershipInstance = new MInstitutionMembership(params)
        if (!MInstitutionMembershipInstance.save(flush: true)) {
            render(view: "create", model: [MInstitutionMembershipInstance: MInstitutionMembershipInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership'), MInstitutionMembershipInstance.id])
        redirect(action: "show", id: MInstitutionMembershipInstance.id)
    }

    def show() {
        def MInstitutionMembershipInstance = MInstitutionMembership.get(params.id)
        if (!MInstitutionMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership'), params.id])
            redirect(action: "list")
            return
        }

        [MInstitutionMembershipInstance: MInstitutionMembershipInstance]
    }

    def edit() {
        def MInstitutionMembershipInstance = MInstitutionMembership.get(params.id)
        if (!MInstitutionMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership'), params.id])
            redirect(action: "list")
            return
        }

        [MInstitutionMembershipInstance: MInstitutionMembershipInstance]
    }

    def update() {
        def MInstitutionMembershipInstance = MInstitutionMembership.get(params.id)
        if (!MInstitutionMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MInstitutionMembershipInstance.version > version) {
                MInstitutionMembershipInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership')] as Object[],
                        "Another user has updated this MInstitutionMembership while you were editing")
                render(view: "edit", model: [MInstitutionMembershipInstance: MInstitutionMembershipInstance])
                return
            }
        }

        MInstitutionMembershipInstance.properties = params

        if (!MInstitutionMembershipInstance.save(flush: true)) {
            render(view: "edit", model: [MInstitutionMembershipInstance: MInstitutionMembershipInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership'), MInstitutionMembershipInstance.id])
        redirect(action: "show", id: MInstitutionMembershipInstance.id)
    }

    def delete() {
        def MInstitutionMembershipInstance = MInstitutionMembership.get(params.id)
        if (!MInstitutionMembershipInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MInstitutionMembershipInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MInstitutionMembership.label', default: 'MInstitutionMembership'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
