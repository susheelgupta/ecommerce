package com.officegain.enigma.base

class Store {

    String name
    String url
    String ssl

    static mapping = {
        id column: "store_id"
        ssl column: "`ssl`"
        version false
    }

    static constraints = {
        name maxSize: 64
    }
}
