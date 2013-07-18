package com.officegain.enigma.base

class Return {

    Long orderId
    Long productId
    Long customerId
    String firstname
    String lastname
    String email
    String telephone
    String product
    String model
    Integer quantity
    Boolean opened
    Long returnReasonId
    Long returnActionId
    Long returnStatusId
    String comment
    Date dateOrdered
    Date dateAdded
    Date dateModified

    static mapping = {
        table name: "`return`"
        id column: "return_id"
        version false
    }

    static constraints = {
        firstname maxSize: 32
        lastname maxSize: 32
        email maxSize: 96
        telephone maxSize: 32
        model maxSize: 64
        comment nullable: true, maxSize: 65535
    }
}
