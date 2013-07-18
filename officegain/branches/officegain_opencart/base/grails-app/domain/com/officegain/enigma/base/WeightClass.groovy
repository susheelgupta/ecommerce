package com.officegain.enigma.base

class WeightClass {

    BigDecimal value

    static mapping = {
        id column: "weight_class_id"
        version false
    }

    static constraints = {
        value scale: 8
    }
}
