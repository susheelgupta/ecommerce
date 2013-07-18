package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ShoppingCart implements Serializable {
    Long productId
    Integer quantity
    Date dateAdded
    Customer customer

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append customer.id
        builder.append quantity
        builder.append productId
        builder.append dateAdded
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append customer.id, other.customer.id
        builder.append quantity, other.quantity
        builder.append productId, other.productId
        builder.append dateAdded, other.dateAdded
        builder.isEquals()
    }

    static belongsTo = [Customer]

    static mapping = {
    }

    static constraints = {
        dateAdded maxSize: 19
    }
}
