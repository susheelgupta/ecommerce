package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductAttribute implements Serializable {

    String value
    Product product

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append id
        builder.append product.id
        builder.append value
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append product.id, other.product.id
        builder.append value, other.value
        builder.isEquals()
    }

    static belongsTo = [Product]

    static mapping = {
    }

    static constraints = {
        value maxSize: 65535
    }
}
