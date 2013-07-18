package com.officegain.enigma.base

class TaxRate {

    Integer taxPriority
    BigDecimal taxRate
    String taxDescription
    Date lastModified
    Date dateAdded
    TaxClass taxClass
    GeoZone geoZone

    static belongsTo = [GeoZone, TaxClass]

    static mapping = {
    }

    static constraints = {
        taxPriority nullable: true
        taxRate scale: 4
        lastModified nullable: true, maxSize: 19
        dateAdded maxSize: 19
    }
}
