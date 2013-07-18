package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class AdministratorLog implements Serializable {

    String module
    String moduleAction
    Integer moduleId
    String fieldKey
    String oldValue
    String newValue
    String action
    Date datestamp
    Administrator administrator

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append module
        builder.append moduleAction
        builder.append moduleId
        builder.append fieldKey
        builder.append oldValue
        builder.append newValue
        builder.append action
        builder.append administrator.id
        builder.append datestamp
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append id, other.id
        builder.append module, other.module
        builder.append moduleAction, other.moduleAction
        builder.append moduleId, other.moduleId
        builder.append fieldKey, other.fieldKey
        builder.append oldValue, other.oldValue
        builder.append newValue, other.newValue
        builder.append action, other.action
        builder.append administrator.id, other.administrator.id
        builder.append datestamp, other.datestamp
        builder.isEquals()
    }

    static belongsTo = [Administrator]

    static mapping = {
    }

    static constraints = {
        moduleAction nullable: true
        moduleId nullable: true
        oldValue nullable: true, maxSize: 65535
        newValue nullable: true, maxSize: 65535
        datestamp maxSize: 19
    }
}
