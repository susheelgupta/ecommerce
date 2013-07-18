package com.officegain.enigma.base

class ProductDiscount {

    Long productId
    Long customerGroupId
    Integer quantity
    Integer priority
    BigDecimal price
    Date discountDateStart
    Date discountDateEnd

    static mapping = {
        id column: "product_discount_id"
        version false
    }

    static constraints = {
        price scale: 4, nullable: true
        quantity nullable: true
        priority nullable: true
        discountDateStart nullable: true
        discountDateEnd nullable: true
    }
}
