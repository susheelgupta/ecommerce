package com.officegain.enigma.website

import com.officegain.enigma.base.*

class CartController {
    def springSecurityService

    def index() {
        if (springSecurityService.isLoggedIn()) {
            def shoppingCarts = getCurrentCustomer().shoppingCarts
            return [shoppingCarts: shoppingCarts]
        } else {
            return [shoppingCarts: session.shoppingCarts]
        }
    }

    def showAddresses = {
        def addressInstances = getCurrentCustomer().addressBooks
        [addressInstances: addressInstances]
    }

    def changeAddress = {
        def selectedAddress = AddressBook.get(params.id)
        def currentOrder = Order.get(session.currentOrderId)
        currentOrder.customerName = selectedAddress.firstName
        currentOrder.customerCity = selectedAddress.city
        currentOrder.customerStreetAddress = selectedAddress.streetAddress
        currentOrder.customerState = selectedAddress.state
        currentOrder.customerPostalCode = selectedAddress.postalCode
        currentOrder.customerCountry = selectedAddress.country.name
        currentOrder.customerTelephone = selectedAddress.telephone
        currentOrder.deliveryCity = selectedAddress.city
        currentOrder.deliveryCountry = selectedAddress.country.name
        currentOrder.deliveryName = selectedAddress.firstName
        currentOrder.deliveryStreetAddress = selectedAddress.streetAddress
        currentOrder.deliveryPostalCode = selectedAddress.postalCode
        currentOrder.deliveryState = selectedAddress.state
        currentOrder.billingCity = selectedAddress.city
        currentOrder.billingCountry = selectedAddress.country.name
        currentOrder.billingName = selectedAddress.firstName
        currentOrder.billingStreetAddress = selectedAddress.streetAddress
        currentOrder.billingPostalCode = selectedAddress.postalCode
        currentOrder.billingState = selectedAddress.state
        currentOrder.save(flush: true, failOnError: true)
        redirect(action: "payment")
    }

    def addAddress = {
        def selectedAddress = new AddressBook()
        selectedAddress.city = params.city
        selectedAddress.telephone = params.telephone
        selectedAddress.country = Country.get(params.country)
        selectedAddress.firstName = params.firstName
        selectedAddress.postalCode = params.postalCode
        selectedAddress.state = params.state
        selectedAddress.streetAddress = params.streetAddress
        selectedAddress.customer = getCurrentCustomer()
        selectedAddress.save(flush: true, failOnError: true)
        def currentOrder = Order.get(session.currentOrderId)
        currentOrder.customerName = selectedAddress.firstName
        currentOrder.customerCity = selectedAddress.city
        currentOrder.customerStreetAddress = selectedAddress.streetAddress
        currentOrder.customerState = selectedAddress.state
        currentOrder.customerPostalCode = selectedAddress.postalCode
        currentOrder.customerCountry = selectedAddress.country.name
        currentOrder.customerTelephone = selectedAddress.telephone
        currentOrder.deliveryCity = selectedAddress.city
        currentOrder.deliveryCountry = selectedAddress.country.name
        currentOrder.deliveryName = selectedAddress.firstName
        currentOrder.deliveryStreetAddress = selectedAddress.streetAddress
        currentOrder.deliveryPostalCode = selectedAddress.postalCode
        currentOrder.deliveryState = selectedAddress.state
        currentOrder.billingCity = selectedAddress.city
        currentOrder.billingCountry = selectedAddress.country.name
        currentOrder.billingName = selectedAddress.firstName
        currentOrder.billingStreetAddress = selectedAddress.streetAddress
        currentOrder.billingPostalCode = selectedAddress.postalCode
        currentOrder.billingState = selectedAddress.state
        currentOrder.save(flush: true, failOnError: true)
        redirect(action: "payment")
    }

    def addProduct = {
        if (springSecurityService.isLoggedIn()) {
            def customer = getCurrentCustomer()
            def cartEntries = customer.shoppingCarts
            boolean newProduct = true
            cartEntries.each {
                if (it.productId.equals(Long.parseLong(params.id))) {
                    it.quantity++
                    it.save(failOnError: true, flush: true)
                    newProduct = false
                    customer.save(failOnError: true, flush: true)
                    redirect(action: 'index')
                    return
                }
            }
            if (newProduct) {
                def newEntry = new ShoppingCart()
                newEntry.productId = Long.parseLong(params.id)
                newEntry.customer = customer
                newEntry.quantity = 1
                newEntry.dateAdded = new Date()
                newEntry.save(failOnError: true, flush: true)
                customer.save(failOnError: true, flush: true)
                redirect(action: 'index')
            }
        } else {
            def cartEntries = session.shoppingCarts
            if (cartEntries == null) {
                cartEntries = new LinkedList<ShoppingCartEntry>()
            }
            boolean newProduct = true
            cartEntries.each {
                if (it.productId.equals(Long.parseLong(params.id))) {
                    it.quantity++
                    newProduct = false
                    redirect(action: 'index')
                    return
                }
            }
            if (newProduct) {
                def newEntry = new ShoppingCartEntry()
                newEntry.productId = Long.parseLong(params.id)
                newEntry.quantity = 1
                newEntry.dateAdded = new Date()
                cartEntries.add(newEntry)
                session.shoppingCarts = cartEntries
                redirect(action: 'index')
            }
        }
    }

    def updateProduct = {
        if (springSecurityService.isLoggedIn()) {
            def shoppingCartEntry = ShoppingCart.findByCustomerAndProductId(getCurrentCustomer(), Long.parseLong(params.id))
            shoppingCartEntry.quantity = Long.parseLong(params.quantity)
            shoppingCartEntry.save(flush: true, failOnError: true)
            redirect(action: 'index')
        } else {
            session.shoppingCarts.each {
                if (it.productId.equals(Long.parseLong(params.id))) {
                    it.quantity = Long.parseLong(params.quantity)
                }
            }
            redirect(action: 'index')
        }
    }

    def deleteProduct = {
        if (springSecurityService.isLoggedIn()) {
            def shoppingCartEntry = ShoppingCart.findByCustomerAndProductId(getCurrentCustomer(), Long.parseLong(params.id))
            shoppingCartEntry.delete()
            redirect(action: 'index')
        } else {
            def cartEntries = session.shoppingCarts
            def cartEntryToBeRemoved = null
            cartEntries.each {
                if (it.productId.equals(Long.parseLong(params.id))) {
                    cartEntryToBeRemoved = it
                }
            }
            cartEntries.remove(cartEntryToBeRemoved)
            redirect(action: 'index')
        }
    }

    def payment = {
        def order = Order.get(session.currentOrderId)
        def orderProducts = order.orderProducts
        [orderInstance: order, orderProducts: orderProducts]
    }

    def checkOut = {
        if (springSecurityService.isLoggedIn()) {
            def total = 0
            def customer = getCurrentCustomer()
            def addressInstance = AddressBook.findByCustomerAndIsDefault(customer, true)
            def order = new Order()
            order.customerCity = addressInstance.city
            order.customerName = addressInstance.firstName
            order.customerCountry = addressInstance.country.name
            order.customerStreetAddress = addressInstance.streetAddress
            order.customerPostalCode = addressInstance.postalCode
            order.customerState = addressInstance.state
            order.customerTelephone = addressInstance.telephone
            order.deliveryCity = addressInstance.city
            order.deliveryCountry = addressInstance.country.name
            order.deliveryName = addressInstance.firstName
            order.deliveryStreetAddress = addressInstance.streetAddress
            order.deliveryPostalCode = addressInstance.postalCode
            order.deliveryState = addressInstance.state
            order.billingCity = addressInstance.city
            order.billingCountry = addressInstance.country.name
            order.billingName = addressInstance.firstName
            order.billingStreetAddress = addressInstance.streetAddress
            order.billingPostalCode = addressInstance.postalCode
            order.billingState = addressInstance.state
            order.customer = customer
            order.paymentMethod = "cash"
            order.datePurchased = new Date()
            order.ordersStatus = OrderStatus.findByName('Processing') ?: new OrderStatus(name: 'Processing').save(flush: true)
            order.save(flush: true, failOnError: true)
            session.currentOrderId = order.id
            customer.shoppingCarts.each {
                def product = Product.findById(it.productId)
                def orderProduct = new OrderProduct()
                orderProduct.productId = product.id
                orderProduct.productModel = product.model
                orderProduct.productName = product.name
                orderProduct.productPrice = product.getCustomerPricing()
                orderProduct.productQuantity = it.quantity
                orderProduct.order = order
                orderProduct.save(flush: true)
                def orderSubTotal = new OrderTotal()
                orderSubTotal.order = order
                orderSubTotal.sortOrder = 0
                orderSubTotal.text = "Sub Total"
                orderSubTotal.title = "Sub Total"
                orderSubTotal.value = orderProduct.productPrice * orderProduct.productQuantity
                orderSubTotal.save(flush: true, failOnError: true)
                total = total + orderSubTotal.value
                def productQuantity = product.quantity - it.quantity
                if (productQuantity <= 0) {
                    product.available = false
                    flash.message = 'Quantity out of stock'
                    redirect(action: 'index')
                } else {
                    product.quantity = productQuantity
                    product.save(flush: true, failOnError: true)
                }
            }
            def orderTotal = new OrderTotal()
            orderTotal.order = order
            orderTotal.sortOrder = 0
            orderTotal.text = "Total"
            orderTotal.title = "Total"
            orderTotal.value = total
            orderTotal.save(flush: true, failOnError: true)
            def orderTotalTx = new OrderTotal()
            orderTotalTx.order = order
            orderTotalTx.sortOrder = 0
            orderTotalTx.text = "Tax"
            orderTotalTx.title = "Tax"
            orderTotalTx.value = 0
            orderTotalTx.save(flush: true, failOnError: true)
            def orderTotalGrand = new OrderTotal()
            orderTotalGrand.order = order
            orderTotalGrand.sortOrder = 0
            orderTotalGrand.text = "Grand Total"
            orderTotalGrand.title = "Grand Total"
            orderTotalGrand.value = total + orderTotalTx.value
            orderTotalGrand.save(flush: true, failOnError: true)
            def entries = []
            customer.shoppingCarts.each {
                entries << it
            }
            entries.each {
                customer.shoppingCarts.remove(it)
                it.delete()
            }
            redirect(action: "payment")
        } else {
            redirect(controller: 'login', action: 'auth')
        }
    }

    def getCurrentCustomer() {
        return Customer.get(springSecurityService.principal.id)
    }
}

class ShoppingCartEntry {
    Long productId
    Integer quantity
    Date dateAdded
}