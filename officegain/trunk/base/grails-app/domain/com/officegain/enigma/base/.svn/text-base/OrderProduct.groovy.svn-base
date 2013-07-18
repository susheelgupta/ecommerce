package com.officegain.enigma.base

class OrderProduct {

    Integer productId
    String productModel
    String productName
    BigDecimal productPrice
    BigDecimal productTax
    Integer productQuantity
    Order order

    static belongsTo = [Order]

    static mapping = {
    }

    static constraints = {
        productModel nullable: true
        productTax nullable: true
    }
}
