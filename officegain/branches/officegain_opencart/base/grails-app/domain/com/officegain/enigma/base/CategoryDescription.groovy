package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class CategoryDescription implements Serializable {

    Long categoryId
    Long languageId
    String name
    String description
    String metaDescription
    String metaKeyword

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append categoryId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append categoryId, other.categoryId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["categoryId", "languageId"]
        version false
    }

    static constraints = {
        description maxSize: 65535
        name maxSize: 64
        description nullable: true
        metaDescription nullable: true
        metaKeyword nullable: true
        languageId nullable: true
    }
}
