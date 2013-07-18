package com.officegain.enigma.base

class Setting {

    Long storeId
    String group
    String key
    String value
    Boolean serialized

    static mapping = {
        id column: "setting_id"
        group column: "`group`"
        key column: "`key`"
        version false
    }

    static constraints = {
        group maxSize: 32
        key maxSize: 64
        value maxSize: 65535
    }
}
