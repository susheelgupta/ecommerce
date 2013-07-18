package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class StockStatus implements Serializable {

    Long stockStatusId
    Long languageId
    String name

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append stockStatusId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append stockStatusId, other.stockStatusId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["stockStatusId", "languageId"]
        version false
    }

    static constraints = {
        name maxSize: 32
    }
}
