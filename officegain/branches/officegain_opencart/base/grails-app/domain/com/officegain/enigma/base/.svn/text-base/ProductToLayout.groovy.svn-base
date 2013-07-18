package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductToLayout implements Serializable {

    Long productId
    Long storeId
    Long layoutId

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append productId
		builder.append storeId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append productId, other.productId
		builder.append storeId, other.storeId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["productId", "storeId"]
		version false
	}
}
