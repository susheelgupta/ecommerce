package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class InformationDescription implements Serializable {

    Long informationId
    Long languageId
    String title
    String description

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append informationId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append informationId, other.informationId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["informationId", "languageId"]
        version false
    }

    static constraints = {
        title maxSize: 64
        description maxSize: 65535
    }
}
