package com.officegain.enigma.base

class CountryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def CountryInstanceList = Country.list()
        [countryInstance: CountryInstanceList]
    }

    def create() {
        [countryInstance: new Country(params)]
    }

    def save() {
        def countryInstance = new Country(params)
        if (!countryInstance.save(flush: true)) {
            render(view: "create", model: [countryInstance: countryInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def countryInstance = Country.get(params.id)
        if (!countryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'country.label', default: 'Country'), params.id])
            return
        }
        [countryInstance: countryInstance]
    }

    def update() {
        def countryInstance = Country.get(params.id)
        if (!countryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'country.label', default: 'Country'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (countryInstance.version > version) {
                countryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'country.label', default: 'Country')] as Object[],
                        "Another user has updated this Country while you were editing")
                render(view: "edit", model: [countryInstance: countryInstance])
                return
            }
        }

        countryInstance.properties = params

        if (!countryInstance.save(flush: true, failOnError: true)) {
            render(view: "edit", model: [countryInstance: countryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'country.label', default: 'Country'), countryInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.countryIds != '') {
            String[] countryIds = params.countryIds.split(",")
            countryIds.each {it ->
                Country.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
