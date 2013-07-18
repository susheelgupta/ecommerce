package com.officegain.enigma.base

class ProductSpecial {

    Long productId
    Long customerGroupId
    Integer priority
    BigDecimal price
    Date dateStart
    Date dateEnd

    static mapping = {
        id column: "product_special_id"
        version false
    }

    static constraints = {
        price scale: 4, nullable: true
        priority nullable: true
        price nullable: true
        dateStart nullable: true
        dateEnd nullable: true

    }
}
