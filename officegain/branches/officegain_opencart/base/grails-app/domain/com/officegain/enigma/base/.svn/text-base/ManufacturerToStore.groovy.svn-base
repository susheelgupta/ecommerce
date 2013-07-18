package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ManufacturerToStore implements Serializable {

    Long manufacturerId
    Long storeId

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append manufacturerId
        builder.append storeId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append manufacturerId, other.manufacturerId
        builder.append storeId, other.storeId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["manufacturerId", "storeId"]
        version false
    }
}
