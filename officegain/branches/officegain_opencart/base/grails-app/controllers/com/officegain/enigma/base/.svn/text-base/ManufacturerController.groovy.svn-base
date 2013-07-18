package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class ManufacturerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def ManufacturerInstanceList = Manufacturer.list()
        [manufacturerInstance: ManufacturerInstanceList]
    }

    def create() {
        [manufacturerInstance: new Manufacturer(params)]
    }

    def save() {
        Manufacturer manufacturerInstance = new Manufacturer(params)
        if (!manufacturerInstance.save(flush: true)) {
            render(view: "create", model: [manufacturerInstance: manufacturerInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def manufacturerInstance = Manufacturer.get(params.id)
        if (!manufacturerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), params.id])
            return
        }
        [manufacturerInstance: manufacturerInstance]
    }

    def update() {
        def manufacturerInstance = Manufacturer.get(params.id)
        if (!manufacturerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (manufacturerInstance.version > version) {
                manufacturerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'manufacturer.label', default: 'Manufacturer')] as Object[],
                        "Another user has updated this Manufacturer while you were editing")
                render(view: "edit", model: [manufacturerInstance: manufacturerInstance])
                return
            }
        }

        manufacturerInstance.properties = params

        if (!manufacturerInstance.save(flush: true, failOnError: true)) {
            render(view: "edit", model: [manufacturerInstance: manufacturerInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), manufacturerInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.manufacturerIds != '') {
            String[] manufacturerIds = params.manufacturerIds.split(",")
            manufacturerIds.each {it ->
                Manufacturer.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
