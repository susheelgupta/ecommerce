package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductToCategory implements Serializable {

    Long productId
    Long categoryId

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append productId
		builder.append categoryId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append productId, other.productId
		builder.append categoryId, other.categoryId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["productId", "categoryId"]
		version false
	}
}
