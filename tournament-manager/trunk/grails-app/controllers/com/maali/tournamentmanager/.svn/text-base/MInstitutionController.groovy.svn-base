package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MInstitutionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MInstitutionInstanceList: MInstitution.list(params), MInstitutionInstanceTotal: MInstitution.count()]
    }

    def create() {
        [MInstitutionInstance: new MInstitution(params)]
    }

    def save() {
        def MInstitutionInstance = new MInstitution(params)
        if (!MInstitutionInstance.save(flush: true)) {
            render(view: "create", model: [MInstitutionInstance: MInstitutionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MInstitution.label', default: 'MInstitution'), MInstitutionInstance.id])
        redirect(action: "show", id: MInstitutionInstance.id)
    }

    def show() {
        def MInstitutionInstance = MInstitution.get(params.id)
        if (!MInstitutionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitution.label', default: 'MInstitution'), params.id])
            redirect(action: "list")
            return
        }

        [MInstitutionInstance: MInstitutionInstance]
    }

    def getCurrentUserId() {
        return User.get(springSecurityService.principal.id)
    }

    def profile() {
        def userId = getCurrentUserId()
        if (userId.instanceOf(MUser)) {
            redirect(controller: "MUser", action: "edit", id: userId.id)
        } else {
            redirect(controller: "MInstitution", action: "edit", id: userId.id)
        }
    }

    def edit() {
        def MInstitutionInstance = MInstitution.get(params.id)
        if (!MInstitutionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitution.label', default: 'MInstitution'), params.id])
            redirect(action: "list")
            return
        }

        [MInstitutionInstance: MInstitutionInstance]
    }

    def update() {
        def MInstitutionInstance = MInstitution.get(params.id)
        if (!MInstitutionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitution.label', default: 'MInstitution'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MInstitutionInstance.version > version) {
                MInstitutionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MInstitution.label', default: 'MInstitution')] as Object[],
                        "Another user has updated this MInstitution while you were editing")
                render(view: "edit", model: [MInstitutionInstance: MInstitutionInstance])
                return
            }
        }

        MInstitutionInstance.properties = params

        if (!MInstitutionInstance.save(flush: true)) {
            render(view: "edit", model: [MInstitutionInstance: MInstitutionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MInstitution.label', default: 'MInstitution'), MInstitutionInstance.id])
        redirect(action: "show", id: MInstitutionInstance.id)
    }

    def delete() {
        def MInstitutionInstance = MInstitution.get(params.id)
        if (!MInstitutionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitution.label', default: 'MInstitution'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MInstitutionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MInstitution.label', default: 'MInstitution'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MInstitution.label', default: 'MInstitution'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
