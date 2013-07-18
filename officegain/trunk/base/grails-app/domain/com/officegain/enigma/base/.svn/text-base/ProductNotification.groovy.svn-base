package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductNotification implements Serializable {

    Date dateAdded
    Product product
    Customer customer

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append product.id
        builder.append customer.id
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append product.id, other.product.id
        builder.append customer.id, other.customer.id
        builder.isEquals()
    }

    static belongsTo = [Customer, Product]

    static mapping = {
    }

    static constraints = {
        dateAdded maxSize: 19
    }
}
