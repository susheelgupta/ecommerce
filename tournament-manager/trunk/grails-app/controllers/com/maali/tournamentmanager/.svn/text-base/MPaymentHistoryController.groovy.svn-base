package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class MPaymentHistoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [MPaymentHistoryInstanceList: MPaymentHistory.list(params), MPaymentHistoryInstanceTotal: MPaymentHistory.count()]
    }

    def create() {
        [MPaymentHistoryInstance: new MPaymentHistory(params)]
    }

    def save() {
        def MPaymentHistoryInstance = new MPaymentHistory(params)
        if (!MPaymentHistoryInstance.save(flush: true)) {
            render(view: "create", model: [MPaymentHistoryInstance: MPaymentHistoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory'), MPaymentHistoryInstance.id])
        redirect(action: "show", id: MPaymentHistoryInstance.id)
    }

    def show() {
        def MPaymentHistoryInstance = MPaymentHistory.get(params.id)
        if (!MPaymentHistoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory'), params.id])
            redirect(action: "list")
            return
        }

        [MPaymentHistoryInstance: MPaymentHistoryInstance]
    }

    def edit() {
        def MPaymentHistoryInstance = MPaymentHistory.get(params.id)
        if (!MPaymentHistoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory'), params.id])
            redirect(action: "list")
            return
        }

        [MPaymentHistoryInstance: MPaymentHistoryInstance]
    }

    def update() {
        def MPaymentHistoryInstance = MPaymentHistory.get(params.id)
        if (!MPaymentHistoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (MPaymentHistoryInstance.version > version) {
                MPaymentHistoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory')] as Object[],
                        "Another user has updated this MPaymentHistory while you were editing")
                render(view: "edit", model: [MPaymentHistoryInstance: MPaymentHistoryInstance])
                return
            }
        }

        MPaymentHistoryInstance.properties = params

        if (!MPaymentHistoryInstance.save(flush: true)) {
            render(view: "edit", model: [MPaymentHistoryInstance: MPaymentHistoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory'), MPaymentHistoryInstance.id])
        redirect(action: "show", id: MPaymentHistoryInstance.id)
    }

    def delete() {
        def MPaymentHistoryInstance = MPaymentHistory.get(params.id)
        if (!MPaymentHistoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory'), params.id])
            redirect(action: "list")
            return
        }

        try {
            MPaymentHistoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'MPaymentHistory.label', default: 'MPaymentHistory'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
