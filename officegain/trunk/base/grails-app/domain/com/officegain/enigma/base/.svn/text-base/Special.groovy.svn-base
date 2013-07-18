package com.officegain.enigma.base

class Special {

    BigDecimal specialNewProductPrice
    Date specialDateAdded
    Date specialLastModified
    Date startDate
    Date expiresDate
    Date dateStatusChange
    Integer status
    Product product

    static belongsTo = [Product]

    static mapping = {
    }

    static constraints = {
        specialNewProductPrice scale: 4
        specialDateAdded nullable: true, maxSize: 19
        specialLastModified nullable: true, maxSize: 19
        startDate nullable: true, maxSize: 19
        expiresDate nullable: true, maxSize: 19
        dateStatusChange nullable: true, maxSize: 19
    }
}
