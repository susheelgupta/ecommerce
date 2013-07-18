package com.officegain.enigma.base

class Manufacturer {

    String name
    String description
    Boolean active = true
    String url
    Integer urlClicked = 0
    Date dateLastClick
    Date dateAdded
    Date lastModified
    ManufacturerImage manufacturerImage

    static hasMany = [products: Product]

    static mapping = {
    }

    static constraints = {
        manufacturerImage nullable: true
        name blank: false, nullable: false
        description nullable: true
        url nullable: true
        dateLastClick nullable: true, maxSize: 19
    }
}
