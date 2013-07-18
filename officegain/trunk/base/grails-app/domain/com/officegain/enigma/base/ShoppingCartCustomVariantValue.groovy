package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ShoppingCartCustomVariantValue implements Serializable {

    Short shoppingCartItemId
    String productVariantValueText
    ProductVariantValue productVariantValue
    Product product
    Customer customer

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append shoppingCartItemId
        builder.append customer.id
        builder.append product.id
        builder.append productVariantValue.id
        builder.append productVariantValueText
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append shoppingCartItemId, other.shoppingCartItemId
        builder.append customer.id, other.customer.id
        builder.append product.id, other.product.id
        builder.append productVariantValue.id, other.productVariantValue.id
        builder.append productVariantValueText, other.productVariantValueText
        builder.isEquals()
    }

    static belongsTo = [Customer, Product, ProductVariantValue]

    static mapping = {
    }

    static constraints = {
        productVariantValueText maxSize: 65535
    }
}
