package com.officegain.enigma.base

class Zone {

    Long countryId
    String name
    String code
    Boolean status

    static mapping = {
        id column: "zone_id"
        version false
    }

    static constraints = {
        name maxSize: 128
        code maxSize: 32
    }
}
