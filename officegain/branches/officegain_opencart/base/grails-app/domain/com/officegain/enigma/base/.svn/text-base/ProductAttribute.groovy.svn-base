package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductAttribute implements Serializable {

    Long productId
    Long attributeId
    Long languageId
	String text

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append productId
		builder.append attributeId
		builder.append languageId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append productId, other.productId
		builder.append attributeId, other.attributeId
		builder.append languageId, other.languageId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["productId", "attributeId", "languageId"]
		version false
	}

	static constraints = {
		text maxSize: 65535
	}
}
