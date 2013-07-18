package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class OrderStatusController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def OrderStatusInstanceList = OrderStatus.list()
        [orderStatusInstance: OrderStatusInstanceList]
    }

    def create() {
        [orderStatusInstance: new OrderStatus(params)]
    }

    def save() {
        OrderStatus orderStatusInstance = new OrderStatus(params)
        orderStatusInstance.languageId = 1
        if (!orderStatusInstance.save(validate: false, flush: true)) {
            render(view: "create", model: [orderStatusInstance: orderStatusInstance])
        }
        redirect(action: "list")
    }

    def show() {
        def orderStatusInstance = OrderStatus.findByOrderStatusId(params.id)
        if (!orderStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), params.id])
            return
        }
        [orderStatusInstance: orderStatusInstance]
    }

    def update() {
        def orderStatusInstance = OrderStatus.findByOrderStatusId(params.id)
        if (!orderStatusInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (orderStatusInstance.version > version) {
                orderStatusInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'orderStatus.label', default: 'OrderStatus')] as Object[],
                        "Another user has updated this OrderStatus while you were editing")
                render(view: "create", model: [orderStatusInstance: orderStatusInstance])
                return
            }
        }

        orderStatusInstance.properties = params

        if (!orderStatusInstance.save(validate: false, flush: true, failOnError: true)) {
            render(view: "create", model: [orderStatusInstance: orderStatusInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'orderStatus.label', default: 'OrderStatus'), orderStatusInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.orderStatusIds != '') {
            String[] orderStatusIds = params.orderStatusIds.split(",")
            orderStatusIds.each {it ->
                OrderStatus.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
