package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class OrderTransactionStatus implements Serializable {

    String statusName

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.isEquals()
    }

    static mapping = {
    }
}
