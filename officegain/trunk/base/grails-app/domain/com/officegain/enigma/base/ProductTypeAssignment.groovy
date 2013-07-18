package com.officegain.enigma.base

class ProductTypeAssignment {

    String action
    String module
    Byte sortOrder
    ProductType productType

    static belongsTo = [ProductType]

    static mapping = {
    }

    static constraints = {
        module nullable: true
        sortOrder nullable: true
    }
}
