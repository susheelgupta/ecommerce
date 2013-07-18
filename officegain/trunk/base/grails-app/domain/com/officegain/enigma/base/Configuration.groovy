package com.officegain.enigma.base

class Configuration {

    String title
    String key
    String value
    String description
    Integer sortOrder
    Date lastModified
    Date dateAdded
    String useFunction
    String setFunction
    ConfigurationGroup configurationGroup

    static belongsTo = [ConfigurationGroup]

    static mapping = {
        key column: 'configuration_key'
    }

    static constraints = {
        value maxSize: 65535
        sortOrder nullable: true
        lastModified nullable: true, maxSize: 19
        dateAdded maxSize: 19
        useFunction nullable: true
        setFunction nullable: true
    }
}
