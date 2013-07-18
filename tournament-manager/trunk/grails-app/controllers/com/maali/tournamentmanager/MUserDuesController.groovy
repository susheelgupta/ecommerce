package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MUserDuesController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MUserDuesInstanceList: MUserDues.list(params), MUserDuesInstanceTotal: MUserDues.count()]
    }

    def create() {
        [MUserDuesInstance: new MUserDues(params)]
    }

    def save() {
        def MUserDuesInstance = new MUserDues(params)
        if (!MUserDuesInstance.save(flush: true)) {
            render(view: "create", model: [MUserDuesInstance: MUserDuesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MUserDues.label', default: 'MUserDues'), MUserDuesInstance.id])
        redirect(action: "show", id: MUserDuesInstance.id)
    }

    def show() {
        def MUserDuesInstance = MUserDues.get(params.id)
        if (!MUserDuesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MUserDues.label', default: 'MUserDues'), params.id])
            redirect(action: "list")
            return
        }

        [MUserDuesInstance: MUserDuesInstance]
    }

    def edit() {
        def MUserDuesInstance = MUserDues.get(params.id)
        if (!MUserDuesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MUserDues.label', default: 'MUserDues'), params.id])
            redirect(action: "list")
            return
        }

        [MUserDuesInstance: MUserDuesInstance]
    }

    def update() {
        def MUserDuesInstance = MUserDues.get(params.id)
        if (!MUserDuesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MUserDues.label', default: 'MUserDues'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MUserDuesInstance.version > version) {
                MUserDuesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MUserDues.label', default: 'MUserDues')] as Object[],
                        "Another user has updated this MUserDues while you were editing")
                render(view: "edit", model: [MUserDuesInstance: MUserDuesInstance])
                return
            }
        }

        MUserDuesInstance.properties = params

        if (!MUserDuesInstance.save(flush: true)) {
            render(view: "edit", model: [MUserDuesInstance: MUserDuesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MUserDues.label', default: 'MUserDues'), MUserDuesInstance.id])
        redirect(action: "show", id: MUserDuesInstance.id)
    }

    def delete() {
        def MUserDuesInstance = MUserDues.get(params.id)
        if (!MUserDuesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MUserDues.label', default: 'MUserDues'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MUserDuesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MUserDues.label', default: 'MUserDues'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MUserDues.label', default: 'MUserDues'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
