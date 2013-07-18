package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class LengthClassController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def lengthClassList = LengthClass.list();
        def lengthClassDescriptionMap = new HashMap<LengthClass, LengthClassDescription>()
        for (LengthClass lengthClass: lengthClassList) {
            LengthClassDescription lengthClassDescription = LengthClassDescription.findByLengthClassId(lengthClass.id)
            lengthClassDescriptionMap.put(lengthClass, lengthClassDescription)
        }
        [lengthClassDescriptionMap: lengthClassDescriptionMap]
    }

    def create() {
        [lengthClassInstance: new LengthClass(params)]
    }

    def save() {
        def lengthClassInstance = new LengthClass(params)
        if (!lengthClassInstance.save(flush: true)) {
            render(view: "create", model: [lengthClassInstance: lengthClassInstance])
            return
        }
        def lengthClassDescriptionInstance = new LengthClassDescription(params)
        lengthClassDescriptionInstance.languageId = 1
        lengthClassDescriptionInstance.lengthClassId = lengthClassInstance.id
        if (!lengthClassDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [lengthClassInstance: lengthClassInstance])
            return
        }
        redirect(action: "list")
    }

    def show() {
        def lengthClassInstance = LengthClass.get(params.id)
        if (!lengthClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lengthClass.label', default: 'LengthClass'), params.id])
            return
        }

        def lengthClassDescriptionInstance = LengthClassDescription.findByLengthClassId(params.id)
        if (!lengthClassDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lengthClass.label', default: 'LengthClassDescription'), params.id])
            return
        }
        [lengthClassInstance: lengthClassInstance, lengthClassDescriptionInstance: lengthClassDescriptionInstance]
    }

    def update() {
        def lengthClassInstance = LengthClass.get(params.id)
        if (!lengthClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lengthClass.label', default: 'LengthClass'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (lengthClassInstance.version > version) {
                lengthClassInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'lengthClass.label', default: 'LengthClass')] as Object[],
                        "Another user has updated this LengthClass while you were editing")
                render(view: "create", model: [lengthClassInstance: lengthClassInstance])
                return
            }
        }

        lengthClassInstance.properties = params

        if (!lengthClassInstance.save(flush: true)) {
            render(view: "create", model: [lengthClassInstance: lengthClassInstance])
            return
        }

        def lengthClassDescriptionInstance = LengthClassDescription.findByLengthClassId(params.id)
        if (!lengthClassDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'lengthClass.label', default: 'LengthClassDescription'), params.id])
            return
        }
        lengthClassDescriptionInstance.properties = params
        if (!lengthClassDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [lengthClassInstance: lengthClassInstance, lengthClassDescriptionInstance: lengthClassDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'lengthClass.label', default: 'LengthClass'), lengthClassInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.lengthClassIds != '') {
            String[] lengthClassIds = params.lengthClassIds.split(",")
            lengthClassIds.each {it ->
                LengthClass.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
