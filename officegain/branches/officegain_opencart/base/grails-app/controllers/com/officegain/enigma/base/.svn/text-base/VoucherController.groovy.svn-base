package com.officegain.enigma.base

class VoucherController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def voucherThemeList = Voucher.list();
        def voucherHistoryMap = new HashMap<Voucher, VoucherHistory>()
        for (Voucher voucher: voucherThemeList) {
            VoucherHistory voucherHistory = VoucherHistory.findByVoucherId(voucher.id)
            voucherHistoryMap.put(voucher, voucherHistory)
        }
        [voucherHistoryMap: voucherHistoryMap]
    }

    def create() {
        [voucherInstance: new Voucher(params)]
    }

    def save() {
        def voucherInstance = new Voucher(params)
        voucherInstance.orderId = 1
        voucherInstance.dateAdded = new Date()
        if (!voucherInstance.save(flush: true)) {
            render(view: "create", model: [voucherInstance: voucherInstance])
            return
        }
        def voucherHistoryInstance = new VoucherHistory(params)
        voucherHistoryInstance.voucherId = voucherInstance.id
        voucherHistoryInstance.orderId = 1
        voucherHistoryInstance.dateAdded = new Date()
        if (!voucherHistoryInstance.save(flush: true)) {
            render(view: "create", model: [voucherInstance: voucherInstance])
            return
        }
        redirect(action: "list")
    }

    def show() {
        def voucherInstance = Voucher.get(params.id)
        if (!voucherInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucher.label', default: 'Voucher'), params.id])
            return
        }

        def voucherHistoryInstance = VoucherHistory.findByVoucherId(params.id)
        if (!voucherHistoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucher.label', default: 'VoucherHistory'), params.id])
            return
        }
        [voucherInstance: voucherInstance, voucherHistoryInstance: voucherHistoryInstance]
    }

    def update() {
        def voucherInstance = Voucher.get(params.id)
        if (!voucherInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucher.label', default: 'Voucher'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (voucherInstance.version > version) {
                voucherInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'voucher.label', default: 'Voucher')] as Object[],
                        "Another user has updated this Voucher while you were editing")
                render(view: "edit", model: [voucherInstance: voucherInstance])
                return
            }
        }

        voucherInstance.properties = params

        if (!voucherInstance.save(flush: true)) {
            render(view: "edit", model: [voucherInstance: voucherInstance])
            return
        }

        def voucherHistoryInstance = VoucherHistory.findByVoucherId(params.id)
        if (!voucherHistoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'voucher.label', default: 'VoucherHistory'), params.id])
            return
        }
        voucherHistoryInstance.properties = params
        if (!voucherHistoryInstance.save(flush: true)) {
            render(view: "show", model: [voucherInstance: voucherInstance, voucherHistoryInstance: voucherHistoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'voucher.label', default: 'Voucher'), voucherInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.voucherIds != '') {
            String[] voucherIds = params.voucherIds.split(",")
            voucherIds.each {it ->
                Voucher.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
