package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class ZoneController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def ZoneInstanceList = Zone.list()
        [zoneInstance: ZoneInstanceList]
    }

    def create() {
        [zoneInstance: new Zone(params)]
    }

    def save() {
        Zone zoneInstance = new Zone(params)
        if (!zoneInstance.save(flush: true)) {
            render(view: "create", model: [zoneInstance: zoneInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def zoneInstance = Zone.get(params.id)
        if (!zoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'zone.label', default: 'Zone'), params.id])
            return
        }
        [zoneInstance: zoneInstance]
    }

    def update() {
        def zoneInstance = Zone.get(params.id)
        if (!zoneInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'zone.label', default: 'Zone'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (zoneInstance.version > version) {
                zoneInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'zone.label', default: 'Zone')] as Object[],
                        "Another user has updated this Zone while you were editing")
                render(view: "create", model: [zoneInstance: zoneInstance])
                return
            }
        }

        zoneInstance.properties = params

        if (!zoneInstance.save(flush: true, failOnError: true)) {
            render(view: "create", model: [zoneInstance: zoneInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'zone.label', default: 'Zone'), zoneInstance.id])
        redirect(action: "list")
    }
}
