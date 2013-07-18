package com.officegain.enigma.base

class OrderStatusHistory {

    Date dateAdded
    Integer customerNotified
    String comments
    Order order
    OrderStatus orderStatus

    static belongsTo = [Order, OrderStatus]

    static mapping = {
    }

    static constraints = {
        dateAdded maxSize: 19
        customerNotified nullable: true
        comments nullable: true, maxSize: 65535
    }
}
