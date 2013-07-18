package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductImageGroup implements Serializable {

    String title
    String code
    Integer sizeWidth
    Integer sizeHeight
    Boolean forceSize

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

    static constraints = {
        sizeWidth nullable: true
        sizeHeight nullable: true
        forceSize nullable: true
    }
}
