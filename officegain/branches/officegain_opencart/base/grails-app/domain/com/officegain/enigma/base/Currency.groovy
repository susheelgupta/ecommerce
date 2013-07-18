package com.officegain.enigma.base

class Currency {

    String title
    String code
    String symbolLeft
    String symbolRight
    Character decimalPlace
    Float value
    Boolean status
    Date dateModified

    static mapping = {
        id column: "currency_id"
        version false
    }

    static constraints = {
        title maxSize: 32
        code maxSize: 3
        symbolLeft maxSize: 12
        symbolRight maxSize: 12
        decimalPlace maxSize: 1
        value scale: 8
    }
}
