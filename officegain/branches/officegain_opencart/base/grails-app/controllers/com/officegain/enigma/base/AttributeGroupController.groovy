package com.officegain.enigma.base

class AttributeGroupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def attributeGroupList = AttributeGroup.list();
        def attributeGroupDescriptionMap = new HashMap<AttributeGroup, AttributeGroupDescription>()
        for (AttributeGroup attributeGroup: attributeGroupList) {
            AttributeGroupDescription attributeGroupDescription = AttributeGroupDescription.findByAttributeGroupId(attributeGroup.id)
            attributeGroupDescriptionMap.put(attributeGroup, attributeGroupDescription)
        }
        [attributeGroupDescriptionMap: attributeGroupDescriptionMap]
    }

    def create() {
        [attributeGroupInstance: new AttributeGroup(params)]
    }

    def save() {
        def attributeGroupInstance = new AttributeGroup(params)
        if (!attributeGroupInstance.save(flush: true)) {
            render(view: "create", model: [attributeGroupInstance: attributeGroupInstance])
            return
        }
        def AttributeGroupDescription attributeGroupDescriptionInstance = new AttributeGroupDescription(params)
        attributeGroupDescriptionInstance.attributeGroupId = attributeGroupInstance.id
        attributeGroupDescriptionInstance.languageId = 1
        if (!attributeGroupDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [attributeGroupInstance: attributeGroupInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'attributeGroup.label', default: 'AttributeGroup'), attributeGroupInstance.id])
        redirect(action: "list", id: attributeGroupInstance.id)
    }

    def show() {
        def attributeGroupInstance = AttributeGroup.get(params.id)
        if (!attributeGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attributeGroup.label', default: 'AttributeGroup'), params.id])
            return
        }
        def attributeGroupDescriptionInstance = AttributeGroupDescription.findByAttributeGroupId(params.id)
        if (!attributeGroupDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attributeGroup.label', default: 'AttributeGroupDescription'), params.id])
            return
        }

        [attributeGroupInstance: attributeGroupInstance, attributeGroupDescriptionInstance: attributeGroupDescriptionInstance]
    }

    def update() {
        def attributeGroupInstance = AttributeGroup.get(params.id)
        if (!attributeGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attributeGroup.label', default: 'AttributeGroup'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (attributeGroupInstance.version > version) {
                attributeGroupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'attributeGroup.label', default: 'AttributeGroup')] as Object[],
                        "Another user has updated this AttributeGroup while you were editing")
                render(view: "edit", model: [attributeGroupInstance: attributeGroupInstance])
                return
            }
        }

        attributeGroupInstance.properties = params
        if (!attributeGroupInstance.save(flush: true, failOnError: true)) {
            render(view: "edit", model: [attributeGroupInstance: attributeGroupInstance])
            return
        }

        def AttributeGroupDescription attributeGroupDescriptionInstance = AttributeGroupDescription.findByAttributeGroupId(params.id)
        if (!attributeGroupDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'attributeGroup.label', default: 'AttributeGroupDescription'), params.id])
            return
        }
        attributeGroupDescriptionInstance.properties = params
        if (!attributeGroupDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [attributeGroupInstance: attributeGroupInstance, attributeGroupDescriptionInstance: attributeGroupDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'attributeGroup.label', default: 'AttributeGroup'), attributeGroupInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.attributeGroupIds != '') {
            String[] attributeGroupIds = params.attributeGroupIds.split(",")
            attributeGroupIds.each {it ->
                AttributeGroup.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
