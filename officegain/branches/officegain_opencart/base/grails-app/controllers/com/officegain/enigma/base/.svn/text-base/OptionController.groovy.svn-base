package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class OptionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def optionList = Option.list();
        def optionDescriptionMap = new HashMap<Option, OptionDescription>()
        for (Option option: optionList) {
            OptionDescription optionDescription = OptionDescription.findByOptionId(option.id)
            optionDescriptionMap.put(option, optionDescription)
        }
        [optionDescriptionMap: optionDescriptionMap]
    }

    def create() {
        [optionInstance: new Option(params)]
    }

    def save() {
        def optionInstance = new Option(params)
        if (!optionInstance.save(flush: true)) {
            render(view: "create", model: [optionInstance: optionInstance])
            return
        }

        def OptionDescription optionDescriptionInstance = new OptionDescription(params)
        optionDescriptionInstance.optionId = optionInstance.id
        optionDescriptionInstance.languageId = 1
        if (!optionDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [optionInstance: optionInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'option.label', default: 'Option'), optionInstance.id])
        redirect(action: "list", id: optionInstance.id)
    }

    def show() {
        def OptionDescription optionDescriptionInstance = OptionDescription.findByOptionId(params.id)
        if (!optionDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'option.label', default: 'Option'), params.id])
            return
        }

        def optionInstance = Option.get(params.id)
        if (!optionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'option.label', default: 'Option'), params.id])
            return
        }
        [optionInstance: optionInstance, optionDescriptionInstance: optionDescriptionInstance]
    }

    def update() {
        def optionInstance = Option.get(params.id)
        if (!optionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'option.label', default: 'Option'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (optionInstance.version > version) {
                optionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'option.label', default: 'Option')] as Object[],
                        "Another user has updated this Option while you were editing")
                render(view: "create", model: [optionInstance: optionInstance])
                return
            }
        }

        optionInstance.properties = params

        if (!optionInstance.save(flush: true)) {
            render(view: "create", model: [optionInstance: optionInstance])
            return
        }

        def optionDescriptionInstance = OptionDescription.findByOptionId(params.id)
        if (!optionDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'option.label', default: 'Option'), params.id])
            return
        }

        optionDescriptionInstance.properties = params

        if (!optionDescriptionInstance.save(flush: true)) {
            render(view: "show", model: [optionInstance: optionInstance, optionDescriptionInstance: optionDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'option.label', default: 'Option'), optionInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.optionIds != '') {
            String[] optionIds = params.optionIds.split(",")
            optionIds.each {it ->
                Option.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
