package com.officegain.enigma.base

class TaxClass {

    String taxClassTitle
    String taxClassDescription
    Date lastModified
    Date dateAdded

    static hasMany = [products: Product, taxRates: TaxRate]

    static mapping = {
        id column: "tax_class_id"
        version false
    }

    static constraints = {
        lastModified nullable: true, maxSize: 19
        dateAdded maxSize: 19
    }
}
