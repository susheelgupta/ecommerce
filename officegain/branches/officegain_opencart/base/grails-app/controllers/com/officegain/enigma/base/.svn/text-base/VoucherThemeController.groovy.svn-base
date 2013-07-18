package com.officegain.enigma.base

class VoucherThemeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def voucherThemeList = VoucherTheme.list();
        def voucherThemeDescriptionMap = new HashMap<VoucherTheme, VoucherThemeDescription>()
        for (VoucherTheme voucherTheme: voucherThemeList) {
            VoucherThemeDescription voucherThemeDescription = VoucherThemeDescription.findByVoucherThemeId(voucherTheme.id)
            voucherThemeDescriptionMap.put(voucherTheme, voucherThemeDescription)
        }
        [voucherThemeDescriptionMap: voucherThemeDescriptionMap]
    }

    def create() {
        [voucherThemeInstance: new VoucherTheme(params)]
    }

    def save() {
        def voucherThemeInstance = new VoucherTheme(params)
        if (!voucherThemeInstance.save(flush: true)) {
            render(view: "create", model: [voucherThemeInstance: voucherThemeInstance])
            return
        }
        def voucherThemeDescriptionInstance = new VoucherThemeDescription(params)
        voucherThemeDescriptionInstance.languageId = 1
        voucherThemeDescriptionInstance.voucherThemeId = voucherThemeInstance.id
        if (!voucherThemeDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [voucherThemeInstance: voucherThemeInstance])
            return
        }
        redirect(action: "list")
    }

    def show() {
        def voucherThemeInstance = VoucherTheme.get(params.id)
        if (!voucherThemeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucherTheme.label', default: 'VoucherTheme'), params.id])
            return
        }

        def voucherThemeDescriptionInstance = VoucherThemeDescription.findByVoucherThemeId(params.id)
        if (!voucherThemeDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucherTheme.label', default: 'VoucherThemeDescription'), params.id])
            return
        }
        [voucherThemeInstance: voucherThemeInstance, voucherThemeDescriptionInstance: voucherThemeDescriptionInstance]
    }

    def update() {
        def voucherThemeInstance = VoucherTheme.get(params.id)
        if (!voucherThemeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucherTheme.label', default: 'VoucherTheme'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (voucherThemeInstance.version > version) {
                voucherThemeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'voucherTheme.label', default: 'VoucherTheme')] as Object[],
                        "Another user has updated this VoucherTheme while you were editing")
                render(view: "edit", model: [voucherThemeInstance: voucherThemeInstance])
                return
            }
        }

        voucherThemeInstance.properties = params

        if (!voucherThemeInstance.save(flush: true)) {
            render(view: "edit", model: [voucherThemeInstance: voucherThemeInstance])
            return
        }

        def voucherThemeDescriptionInstance = VoucherThemeDescription.findByVoucherThemeId(params.id)
        if (!voucherThemeDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucherTheme.label', default: 'VoucherThemeDescription'), params.id])
            return
        }
        voucherThemeDescriptionInstance.properties = params
        if (!voucherThemeDescriptionInstance.save(flush: true)) {
            render(view: "show", model: [voucherThemeInstance: voucherThemeInstance, voucherThemeDescriptionInstance: voucherThemeDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'voucherTheme.label', default: 'VoucherTheme'), voucherThemeInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.voucherThemeIds != '') {
            String[] voucherThemeIds = params.voucherThemeIds.split(",")
            voucherThemeIds.each {it ->
                VoucherTheme.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
