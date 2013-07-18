package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductRelated implements Serializable {

    Long productId
    Long relatedId

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append productId
        builder.append relatedId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append productId, other.productId
        builder.append relatedId, other.relatedId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["productId", "relatedId"]
        version false
    }
}
