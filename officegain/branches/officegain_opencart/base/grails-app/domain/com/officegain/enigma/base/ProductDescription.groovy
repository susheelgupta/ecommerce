package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductDescription implements Serializable {

    Long productId
    Long languageId
    String name
    String description
    String metaDescription
    String metaKeyword
    String tag

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append productId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append productId, other.productId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["productId", "languageId"]
        version false
    }

    static constraints = {
        description maxSize: 65535
        tag maxSize: 65535
        description nullable: true
        metaDescription nullable: true
        metaKeyword nullable: true
        tag nullable: true
        name nullable: true
    }
}
