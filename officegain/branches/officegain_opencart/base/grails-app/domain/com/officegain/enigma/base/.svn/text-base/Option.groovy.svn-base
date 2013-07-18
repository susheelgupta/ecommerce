package com.officegain.enigma.base

class Option {

    String type
    Integer sortOrder

    static mapping = {
        table name: "`option`"
        id column: "option_id"
        version false
    }

    static constraints = {
        type maxSize: 32
        type nullable: true
        sortOrder nullable: true
    }
}
