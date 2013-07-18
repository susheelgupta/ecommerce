package com.officegain.enigma.base

class Currency {

    String title
    String code
    String symbolLeft
    String symbolRight
    Character decimalPlaces
    Float value
    Date lastUpdated

    static mapping = {
    }

    static constraints = {
        code maxSize: 3
        symbolLeft nullable: true, maxSize: 12
        symbolRight nullable: true, maxSize: 12
        decimalPlaces nullable: true, maxSize: 1
        value nullable: true, scale: 8
        lastUpdated nullable: true, maxSize: 19
    }
}
