package com.officegain.enigma.base

class StockStatusController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def StockStatusInstanceList = StockStatus.list()
        [stockStatusInstance: StockStatusInstanceList]
    }

    def create() {
        [stockStatusInstance: new StockStatus(params)]
    }

    def save() {
        StockStatus stockStatusInstance = new StockStatus(params)
        stockStatusInstance.languageId = 1
        if (!stockStatusInstance.save(validate: false, flush: true)) {
            render(view: "create", model: [stockStatusInstance: stockStatusInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def stockStatusInstance = StockStatus.findByStockStatusId(params.id)
        if (!stockStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockStatus.label', default: 'StockStatus'), params.id])
            return
        }
        [stockStatusInstance: stockStatusInstance]
    }

    def update() {
        def stockStatusInstance = StockStatus.findByStockStatusId(params.id)
        if (!stockStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockStatus.label', default: 'StockStatus'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (stockStatusInstance.version > version) {
                stockStatusInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'stockStatus.label', default: 'StockStatus')] as Object[],
                        "Another user has updated this StockStatus while you were editing")
                render(view: "create", model: [stockStatusInstance: stockStatusInstance])
                return
            }
        }

        stockStatusInstance.properties = params

        if (!stockStatusInstance.save(validate: false, flush: true, failOnError: true)) {
            render(view: "create", model: [stockStatusInstance: stockStatusInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'stockStatus.label', default: 'StockStatus'), stockStatusInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.stockStatusIds != '') {
            String[] stockStatusIds = params.stockStatusIds.split(",")
            stockStatusIds.each {it ->
                StockStatus.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
