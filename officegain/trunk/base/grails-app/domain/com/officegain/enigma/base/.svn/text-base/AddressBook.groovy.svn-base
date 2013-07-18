package com.officegain.enigma.base

class AddressBook {

    Boolean isDefault = false
    Character gender
    String company
    String firstName
    String lastName
    String streetAddress
    String suburb
    String postalCode
    String city
    String state
    String telephone
    String fax
    Country country
    Customer customer
    Zone zone

    static belongsTo = [Country, Customer, Zone]

    static mapping = {
    }

    static constraints = {
        gender nullable: true, maxSize: 1
        company nullable: true
        lastName nullable: true
        suburb nullable: true
        fax nullable: true
        zone nullable: true
    }
}
