package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ReturnReason implements Serializable {

    Long returnReasonId
    Long languageId
    String name

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append returnReasonId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append returnReasonId, other.returnReasonId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["returnReasonId", "languageId"], generator: 'assigned'
        version false
    }

    static constraints = {
        name maxSize: 128
    }
}
