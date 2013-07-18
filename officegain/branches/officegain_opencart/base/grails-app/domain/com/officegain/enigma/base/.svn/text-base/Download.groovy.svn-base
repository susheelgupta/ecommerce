package com.officegain.enigma.base

class Download {

    String filename
    String mask
    Integer remaining
    Date dateAdded

    static mapping = {
        id column: "download_id"
        version false
    }

    static constraints = {
        filename maxSize: 128
        mask maxSize: 128
        filename nullable: true
    }
}
