package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class CategoryToStore implements Serializable {

    Long categoryId
    Long storeId

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append categoryId
        builder.append storeId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append categoryId, other.categoryId
        builder.append storeId, other.storeId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["categoryId", "storeId"]
        version false
    }
}
