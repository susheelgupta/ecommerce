package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class AttributeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def attributeList = Attribute.list();
        def attributeDescriptionMap = new HashMap<Attribute, AttributeDescription>()
        for (Attribute attribute: attributeList) {
            AttributeDescription attributeDescription = AttributeDescription.findByAttributeId(attribute.id)
            attributeDescriptionMap.put(attribute, attributeDescription)
        }
        [attributeDescriptionMap: attributeDescriptionMap]
    }

    def create() {
        [attributeInstance: new Attribute(params)]
    }

    def save() {
        def attributeInstance = new Attribute(params)
        if (!attributeInstance.save(flush: true)) {
            render(view: "create", model: [attributeInstance: attributeInstance])
            return
        }
        def attributeDescriptionInstance = new AttributeDescription(params)
        attributeDescriptionInstance.languageId = 1
        attributeDescriptionInstance.attributeId = attributeInstance.id
        if (!attributeDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [attributeInstance: attributeInstance])
            return
        }
        redirect(action: "list")
    }

    def show() {
        def attributeInstance = Attribute.get(params.id)
        if (!attributeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attribute.label', default: 'Attribute'), params.id])
            return
        }

        def attributeDescriptionInstance = AttributeDescription.findByAttributeId(params.id)
        if (!attributeDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attribute.label', default: 'AttributeDescription'), params.id])
            return
        }
        [attributeInstance: attributeInstance, attributeDescriptionInstance: attributeDescriptionInstance]
    }

    def edit() {
        def attributeInstance = Attribute.get(params.id)
        if (!attributeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attribute.label', default: 'Attribute'), params.id])
            redirect(action: "list")
            return
        }

        [attributeInstance: attributeInstance]
    }

    def update() {
        def attributeInstance = Attribute.get(params.id)
        if (!attributeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attribute.label', default: 'Attribute'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (attributeInstance.version > version) {
                attributeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'attribute.label', default: 'Attribute')] as Object[],
                        "Another user has updated this Attribute while you were editing")
                render(view: "edit", model: [attributeInstance: attributeInstance])
                return
            }
        }

        attributeInstance.properties = params

        if (!attributeInstance.save(flush: true)) {
            render(view: "edit", model: [attributeInstance: attributeInstance])
            return
        }

        def attributeDescriptionInstance = AttributeDescription.findByAttributeId(params.id)
        if (!attributeDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attribute.label', default: 'AttributeDescription'), params.id])
            return
        }
        attributeDescriptionInstance.properties = params
        if (!attributeDescriptionInstance.save(flush: true)) {
            render(view: "show", model: [attributeInstance: attributeInstance, attributeDescriptionInstance: attributeDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'attribute.label', default: 'Attribute'), attributeInstance.id])
        redirect(action: "list")
    }

    def delete() {
        def attributeInstance = Attribute.get(params.id)
        if (!attributeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attribute.label', default: 'Attribute'), params.id])
            redirect(action: "list")
            return
        }

        try {
            attributeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'attribute.label', default: 'Attribute'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'attribute.label', default: 'Attribute'), params.id])
            redirect(action: "list", id: params.id)
        }
    }
}
