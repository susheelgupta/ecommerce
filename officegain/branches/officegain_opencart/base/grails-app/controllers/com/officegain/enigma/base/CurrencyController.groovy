package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class CurrencyController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def CurrencyInstanceList = Currency.list()
        [currencyInstance: CurrencyInstanceList]
    }

    def create() {
        [currencyInstance: new Currency(params)]
    }

    def save() {
        Currency currencyInstance = new Currency(params)
        currencyInstance.dateModified = new Date()
        if (!currencyInstance.save(flush: true, failOnError: true)) {
            render(view: "create", model: [currencyInstance: currencyInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def currencyInstance = Currency.get(params.id)
        if (!currencyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'currency.label', default: 'Currency'), params.id])
            return
        }
        [currencyInstance: currencyInstance]
    }

    def update() {
        def currencyInstance = Currency.get(params.id)
        if (!currencyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'currency.label', default: 'Currency'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (currencyInstance.version > version) {
                currencyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'currency.label', default: 'Currency')] as Object[],
                        "Another user has updated this Currency while you were editing")
                render(view: "edit", model: [currencyInstance: currencyInstance])
                return
            }
        }

        currencyInstance.properties = params

        if (!currencyInstance.save(flush: true, failOnError: true)) {
            render(view: "edit", model: [currencyInstance: currencyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'currency.label', default: 'Currency'), currencyInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.currencyIds != '') {
            String[] currencyIds = params.currencyIds.split(",")
            currencyIds.each {it ->
                Currency.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
