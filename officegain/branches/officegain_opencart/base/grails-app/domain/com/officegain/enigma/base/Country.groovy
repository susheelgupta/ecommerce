package com.officegain.enigma.base

class Country {

    String name
    String isoCode2
    String isoCode3
    String addressFormat
    Boolean postcodeRequired
    Boolean status

    static mapping = {
        id column: "country_id"
        version false
        isoCode2 column: "iso_code_2"
        isoCode3 column: "iso_code_3"
    }

    static constraints = {
        name maxSize: 128
        isoCode2 maxSize: 2
        isoCode3 maxSize: 3
        addressFormat maxSize: 65535
    }
}
