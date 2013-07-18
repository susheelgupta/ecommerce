package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class LanguageController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def LanguageInstanceList = Language.list()
        [languageInstance: LanguageInstanceList]
    }

    def create() {
        [languageInstance: new Language(params)]
    }

    def save() {
        Language languageInstance = new Language(params)
        if (!languageInstance.save(flush: true)) {
            render(view: "create", model: [languageInstance: languageInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def languageInstance = Language.get(params.id)
        if (!languageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'language.label', default: 'Language'), params.id])
            return
        }
        [languageInstance: languageInstance]
    }

    def update() {
        def languageInstance = Language.get(params.id)
        if (!languageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'language.label', default: 'Language'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (languageInstance.version > version) {
                languageInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'language.label', default: 'Language')] as Object[],
                        "Another user has updated this Language while you were editing")
                render(view: "edit", model: [languageInstance: languageInstance])
                return
            }
        }

        languageInstance.properties = params

        if (!languageInstance.save(flush: true, failOnError: true)) {
            render(view: "edit", model: [languageInstance: languageInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'language.label', default: 'Language'), languageInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.languageIds != '') {
            String[] languageIds = params.languageIds.split(",")
            languageIds.each {it ->
                Language.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
