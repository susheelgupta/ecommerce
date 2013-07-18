package com.officegain.enigma.base

class CreditCard {

    String name
    String pattern
    Character status
    Integer sortOrder

    static mapping = {
    }

    static constraints = {
        status maxSize: 1
        sortOrder nullable: true
    }
}
