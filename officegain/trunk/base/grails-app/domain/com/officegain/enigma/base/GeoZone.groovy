package com.officegain.enigma.base

class GeoZone {

    String name
    String description
    Date lastModified
    Date dateAdded

    static hasMany = [taxRates: TaxRate, zoneToGeoZones: ZoneToGeoZone]

    static mapping = {
    }

    static constraints = {
        lastModified nullable: true, maxSize: 19
        dateAdded maxSize: 19
    }
}
