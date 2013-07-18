package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MInstitutionManagementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MInstitutionManagementInstanceList: MInstitutionManagement.list(params), MInstitutionManagementInstanceTotal: MInstitutionManagement.count()]
    }

    def create() {
        [MInstitutionManagementInstance: new MInstitutionManagement(params)]
    }

    def getCurrentUserId() {
        return User.get(springSecurityService.principal.id)
    }

    def save() {
        def MInstitutionManagementInstance = new MInstitutionManagement(params)
        MInstitutionManagementInstance.memberId = getCurrentUserId()
        MInstitutionManagementInstance.institutionId = getCurrentUserId()
        if (!MInstitutionManagementInstance.save(flush: true)) {
            render(view: "create", model: [MInstitutionManagementInstance: MInstitutionManagementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement'), MInstitutionManagementInstance.id])
        redirect(action: "show", id: MInstitutionManagementInstance.id)
    }

    def show() {
        def MInstitutionManagementInstance = MInstitutionManagement.get(params.id)
        if (!MInstitutionManagementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement'), params.id])
            redirect(action: "list")
            return
        }

        [MInstitutionManagementInstance: MInstitutionManagementInstance]
    }

    def edit() {
        def MInstitutionManagementInstance = MInstitutionManagement.get(params.id)
        if (!MInstitutionManagementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement'), params.id])
            redirect(action: "list")
            return
        }

        [MInstitutionManagementInstance: MInstitutionManagementInstance]
    }

    def update() {
        def MInstitutionManagementInstance = MInstitutionManagement.get(params.id)
        if (!MInstitutionManagementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MInstitutionManagementInstance.version > version) {
                MInstitutionManagementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement')] as Object[],
                        "Another user has updated this MInstitutionManagement while you were editing")
                render(view: "edit", model: [MInstitutionManagementInstance: MInstitutionManagementInstance])
                return
            }
        }

        MInstitutionManagementInstance.properties = params

        if (!MInstitutionManagementInstance.save(flush: true)) {
            render(view: "edit", model: [MInstitutionManagementInstance: MInstitutionManagementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement'), MInstitutionManagementInstance.id])
        redirect(action: "show", id: MInstitutionManagementInstance.id)
    }

    def delete() {
        def MInstitutionManagementInstance = MInstitutionManagement.get(params.id)
        if (!MInstitutionManagementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MInstitutionManagementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MInstitutionManagement.label', default: 'MInstitutionManagement'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
