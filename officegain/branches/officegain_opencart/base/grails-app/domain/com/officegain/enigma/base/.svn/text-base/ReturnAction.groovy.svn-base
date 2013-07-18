package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ReturnAction implements Serializable {

    Long returnActionId
    Long languageId
    String name

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append returnActionId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append returnActionId, other.returnActionId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["returnActionId", "languageId"]
        version false
    }

    static constraints = {
        name maxSize: 64
    }
}
