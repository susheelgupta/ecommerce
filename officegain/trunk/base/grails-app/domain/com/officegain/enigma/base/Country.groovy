package com.officegain.enigma.base

class Country {

    String name
    String isoCode2
    String isoCode3
    String addressFormat

    static hasMany = [addressBooks: AddressBook, zoneToGeoZones: ZoneToGeoZone, zones: Zone]

    static mapping = {
    }

    static constraints = {
        isoCode2 nullable: true, maxSize: 2
        isoCode3 nullable: true, maxSize: 3
        addressFormat nullable: true
    }
}
