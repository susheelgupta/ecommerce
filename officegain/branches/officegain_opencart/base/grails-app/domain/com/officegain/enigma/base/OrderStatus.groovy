package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class OrderStatus implements Serializable {

    Long orderStatusId
    Long languageId
    String name

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append orderStatusId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append orderStatusId, other.orderStatusId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["orderStatusId", "languageId"]
        version false
    }

    static constraints = {
        name maxSize: 32
    }
}
