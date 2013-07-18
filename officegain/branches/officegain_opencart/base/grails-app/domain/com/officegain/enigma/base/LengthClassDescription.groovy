package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class LengthClassDescription implements Serializable {

    Long lengthClassId
    Long languageId
    String title
    String unit

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append lengthClassId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append lengthClassId, other.lengthClassId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["lengthClassId", "languageId"]
        version false
    }

    static constraints = {
        title maxSize: 32
        unit maxSize: 4
    }
}
