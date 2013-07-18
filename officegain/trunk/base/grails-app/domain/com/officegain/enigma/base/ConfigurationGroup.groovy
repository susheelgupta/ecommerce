package com.officegain.enigma.base

class ConfigurationGroup {

    String title
    String description
    Integer sortOrder
    Integer visible

    static hasMany = [configurations: Configuration]

    static mapping = {
    }

    static constraints = {
        sortOrder nullable: true
        visible nullable: true
    }
}
