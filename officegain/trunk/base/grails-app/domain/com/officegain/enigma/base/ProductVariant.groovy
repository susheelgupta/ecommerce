package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductVariant implements Serializable {

    Byte defaultCombo
    ProductVariantValue productVariantValue
    Product product

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append product.id
        builder.append productVariantValue.id
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append product.id, other.product.id
        builder.append productVariantValue.id, other.productVariantValue.id
        builder.isEquals()
    }

    static belongsTo = [Product, ProductVariantValue]

    static mapping = {
    }

    static constraints = {
        defaultCombo nullable: true
    }
}
