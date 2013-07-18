package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MUserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MUserInstanceList: MUser.list(params), MUserInstanceTotal: MUser.count()]
    }

    def create() {
        [MUserInstance: new MUser(params)]
    }

    def save() {
        def MUserInstance = new MUser(params)
        if (!MUserInstance.save(flush: true)) {
            render(view: "create", model: [MUserInstance: MUserInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MUser.label', default: 'MUser'), MUserInstance.id])
        redirect(action: "show", id: MUserInstance.id)
    }

    def show() {
        def MUserInstance = MUser.get(params.id)
        if (!MUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MUser.label', default: 'MUser'), params.id])
            redirect(action: "list")
            return
        }

        [MUserInstance: MUserInstance]
    }

    def edit() {
        def MUserInstance = MUser.get(params.id)
        if (!MUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MUser.label', default: 'MUser'), params.id])
            redirect(action: "list")
            return
        }

        [MUserInstance: MUserInstance]
    }

    def update() {
        def MUserInstance = MUser.get(params.id)
        if (!MUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MUser.label', default: 'MUser'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MUserInstance.version > version) {
                MUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MUser.label', default: 'MUser')] as Object[],
                        "Another user has updated this MUser while you were editing")
                render(view: "edit", model: [MUserInstance: MUserInstance])
                return
            }
        }

        MUserInstance.properties = params

        if (!MUserInstance.save(flush: true)) {
            render(view: "edit", model: [MUserInstance: MUserInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MUser.label', default: 'MUser'), MUserInstance.id])
        redirect(action: "show", id: MUserInstance.id)
    }

    def delete() {
        def MUserInstance = MUser.get(params.id)
        if (!MUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MUser.label', default: 'MUser'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MUserInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MUser.label', default: 'MUser'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MUser.label', default: 'MUser'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
