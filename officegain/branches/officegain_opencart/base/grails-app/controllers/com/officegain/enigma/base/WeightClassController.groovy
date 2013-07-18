package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class WeightClassController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def weightClassList = WeightClass.list();
        def weightClassDescriptionMap = new HashMap<WeightClass, WeightClassDescription>()
        for (WeightClass weightClass: weightClassList) {
            WeightClassDescription weightClassDescription = WeightClassDescription.findByWeightClassId(weightClass.id)
            weightClassDescriptionMap.put(weightClass, weightClassDescription)
        }
        [weightClassDescriptionMap: weightClassDescriptionMap]
    }

    def create() {
        [weightClassInstance: new WeightClass(params)]
    }

    def save() {
        def weightClassInstance = new WeightClass(params)
        if (!weightClassInstance.save(flush: true)) {
            render(view: "create", model: [weightClassInstance: weightClassInstance])
            return
        }
        def weightClassDescriptionInstance = new WeightClassDescription(params)
        weightClassDescriptionInstance.languageId = 1
        weightClassDescriptionInstance.weightClassId = weightClassInstance.id
        if (!weightClassDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [weightClassInstance: weightClassInstance])
            return
        }
        redirect(action: "list")
    }

    def show() {
        def weightClassInstance = WeightClass.get(params.id)
        if (!weightClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'weightClass.label', default: 'WeightClass'), params.id])
            return
        }

        def weightClassDescriptionInstance = WeightClassDescription.findByWeightClassId(params.id)
        if (!weightClassDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'weightClass.label', default: 'WeightClassDescription'), params.id])
            return
        }
        [weightClassInstance: weightClassInstance, weightClassDescriptionInstance: weightClassDescriptionInstance]
    }

    def update() {
        def weightClassInstance = WeightClass.get(params.id)
        if (!weightClassInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'weightClass.label', default: 'WeightClass'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (weightClassInstance.version > version) {
                weightClassInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'weightClass.label', default: 'WeightClass')] as Object[],
                        "Another user has updated this WeightClass while you were editing")
                render(view: "create", model: [weightClassInstance: weightClassInstance])
                return
            }
        }

        weightClassInstance.properties = params

        if (!weightClassInstance.save(flush: true)) {
            render(view: "create", model: [weightClassInstance: weightClassInstance])
            return
        }

        def weightClassDescriptionInstance = WeightClassDescription.findByWeightClassId(params.id)
        if (!weightClassDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'weightClass.label', default: 'WeightClassDescription'), params.id])
            return
        }
        weightClassDescriptionInstance.properties = params
        if (!weightClassDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [weightClassInstance: weightClassInstance, weightClassDescriptionInstance: weightClassDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'weightClass.label', default: 'WeightClass'), weightClassInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.weightClassIds != '') {
            String[] weightClassIds = params.weightClassIds.split(",")
            weightClassIds.each {it ->
                WeightClass.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
