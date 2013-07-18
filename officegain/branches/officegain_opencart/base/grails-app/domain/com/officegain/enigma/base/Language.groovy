package com.officegain.enigma.base

class Language {

    String name
    String code
    String locale
    String image
    String directory
    String filename
    Integer sortOrder
    Boolean status

    static mapping = {
        id column: "language_id"
        version false
    }

    static constraints = {
        name maxSize: 32
        code maxSize: 5
        image maxSize: 64
        directory maxSize: 32
        filename maxSize: 64
    }
}
