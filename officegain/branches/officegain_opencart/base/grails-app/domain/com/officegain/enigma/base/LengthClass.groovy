package com.officegain.enigma.base

class LengthClass {

    BigDecimal value

    static mapping = {
        id column: "length_class_id"
        version false
    }

    static constraints = {
        value scale: 8
    }
}
