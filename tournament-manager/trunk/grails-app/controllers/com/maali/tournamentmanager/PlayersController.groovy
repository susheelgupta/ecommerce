package com.maali.tournamentmanager

import org.springframework.dao.DataIntegrityViolationException

class PlayersController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [playersInstanceList: Players.list(params), playersInstanceTotal: Players.count()]
    }

    def create() {
        [playersInstance: new Players(params)]
    }

    def save() {
        def playersInstance = new Players(params)
        if (!playersInstance.save(flush: true)) {
            render(view: "create", model: [playersInstance: playersInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'players.label', default: 'Players'), playersInstance.id])
        redirect(action: "show", id: playersInstance.id)
    }

    def show() {
        def playersInstance = Players.get(params.id)
        if (!playersInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'players.label', default: 'Players'), params.id])
            redirect(action: "list")
            return
        }

        [playersInstance: playersInstance]
    }

    def edit() {
        def playersInstance = Players.get(params.id)
        if (!playersInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'players.label', default: 'Players'), params.id])
            redirect(action: "list")
            return
        }

        [playersInstance: playersInstance]
    }

    def update() {
        def playersInstance = Players.get(params.id)
        if (!playersInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'players.label', default: 'Players'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (playersInstance.version > version) {
                playersInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'players.label', default: 'Players')] as Object[],
                        "Another user has updated this Players while you were editing")
                render(view: "edit", model: [playersInstance: playersInstance])
                return
            }
        }

        playersInstance.properties = params

        if (!playersInstance.save(flush: true)) {
            render(view: "edit", model: [playersInstance: playersInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'players.label', default: 'Players'), playersInstance.id])
        redirect(action: "show", id: playersInstance.id)
    }

    def delete() {
        def playersInstance = Players.get(params.id)
        if (!playersInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'players.label', default: 'Players'), params.id])
            redirect(action: "list")
            return
        }

        try {
            playersInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'players.label', default: 'Players'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'players.label', default: 'Players'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
