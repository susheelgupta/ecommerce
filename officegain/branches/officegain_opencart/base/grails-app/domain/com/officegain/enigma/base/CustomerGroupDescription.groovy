package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class CustomerGroupDescription implements Serializable {

    Long customerGroupId
    Long languageId
    String name
    String description

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append customerGroupId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append customerGroupId, other.customerGroupId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["customerGroupId", "languageId"]
        version false
    }

    static constraints = {
        name (maxSize: 32,nullable: true )
        description (maxSize: 65535,nullable: true)
    }
}
