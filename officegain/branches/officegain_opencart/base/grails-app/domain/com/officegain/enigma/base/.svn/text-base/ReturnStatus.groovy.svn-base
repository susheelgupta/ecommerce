package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ReturnStatus implements Serializable {

    Long returnStatusId
    Long languageId
    String name

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append returnStatusId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append returnStatusId, other.returnStatusId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["returnStatusId", "languageId"]
        version false
    }

    static constraints = {
        name maxSize: 32
    }
}
