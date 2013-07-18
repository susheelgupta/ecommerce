package com.officegain.enigma.base

class Order {

    String customerName
    String customerCompany
    String customerStreetAddress
    String customerSuburb
    String customerCity
    String customerPostalCode
    String customerState
    String customerCountry
    String customerTelephone
    String customerEmailAddress
    String customerIpAddress

    String deliveryName
    String deliveryCompany
    String deliveryStreetAddress
    String deliverySuburb
    String deliveryCity
    String deliveryPostalCode
    String deliveryState
    String deliveryCountry

    String billingName
    String billingCompany
    String billingStreetAddress
    String billingSuburb
    String billingCity
    String billingPostalCode
    String billingState
    String billingCountry

    String paymentMethod
    Date lastModified
    Date datePurchased
    Date orderDateFinished
    String currency
    BigDecimal currencyValue

    OrderStatus ordersStatus
    Customer customer

    static hasMany = [orderProductDownloads: OrderProductDownload, orderProductVariants: OrderProductVariant, orderProducts: OrderProduct,
            orderStatusHistory: OrderStatusHistory, orderTotals: OrderTotal, orderTransactionHistories: OrderTransactionHistory]

    static belongsTo = [OrderStatus, Customer]

    static mapping = {
        table 'orders'
    }

    static constraints = {
        customerCompany nullable: true
        customerSuburb nullable: true
        customerPostalCode nullable: true
        customerState nullable: true
        customerTelephone nullable: true
        customerEmailAddress nullable: true
        customerIpAddress nullable: true, maxSize: 15

        deliveryCompany nullable: true
        deliverySuburb nullable: true
        deliveryPostalCode nullable: true
        deliveryState nullable: true

        billingCompany nullable: true
        billingSuburb nullable: true
        billingPostalCode nullable: true
        billingState nullable: true

        lastModified nullable: true, maxSize: 19
        orderDateFinished nullable: true, maxSize: 19
        currency nullable: true, maxSize: 3
        currencyValue nullable: true, scale: 6
    }
}
