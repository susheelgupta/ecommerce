package com.officegain.enigma.base

class InformationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def informationList = Information.list();
        def informationDescriptionMap = new HashMap<Information, InformationDescription>()
        for (Information information: informationList) {
            InformationDescription informationDescription = InformationDescription.findByInformationId(information.id)
            informationDescriptionMap.put(information, informationDescription)
        }
        [informationDescriptionMap: informationDescriptionMap]
    }

    def create() {
        [informationInstance: new Information(params)]
    }

    def save() {
        def informationInstance = new Information(params)
        if (!informationInstance.save(flush: true)) {
            render(view: "create", model: [informationInstance: informationInstance])
            return
        }
        def InformationDescription informationDescriptionInstance = new InformationDescription(params)
        informationDescriptionInstance.informationId = informationInstance.id
        informationDescriptionInstance.languageId = 1
        if (!informationDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [informationInstance: informationInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'information.label', default: 'Information'), informationInstance.id])
        redirect(action: "list", id: informationInstance.id)
    }

    def show() {
        def informationInstance = Information.get(params.id)
        if (!informationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'information.label', default: 'Information'), params.id])
            return
        }
        def informationDescriptionInstance = InformationDescription.findByInformationId(params.id)
        if (!informationDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'information.label', default: 'InformationDescription'), params.id])
            return
        }

        [informationInstance: informationInstance, informationDescriptionInstance: informationDescriptionInstance]
    }

    def update() {
        def informationInstance = Information.get(params.id)
        if (!informationInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'information.label', default: 'Information'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (informationInstance.version > version) {
                informationInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'information.label', default: 'Information')] as Object[],
                        "Another user has updated this Information while you were editing")
                render(view: "edit", model: [informationInstance: informationInstance])
                return
            }
        }

        informationInstance.properties = params
        if (!informationInstance.save(flush: true, failOnError: true)) {
            render(view: "edit", model: [informationInstance: informationInstance])
            return
        }

        def InformationDescription informationDescriptionInstance = InformationDescription.findByInformationId(params.id)
        if (!informationDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'information.label', default: 'InformationDescription'), params.id])
            return
        }
        informationDescriptionInstance.properties = params
        if (!informationDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [informationInstance: informationInstance, informationDescriptionInstance: informationDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'information.label', default: 'Information'), informationInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.informationIds != '') {
            String[] informationIds = params.informationIds.split(",")
            informationIds.each {it ->
                Information.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}