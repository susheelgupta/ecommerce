package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class AttributeDescription implements Serializable {

    Long attributeId
    Long languageId
	String name

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append attributeId
		builder.append languageId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append attributeId, other.attributeId
		builder.append languageId, other.languageId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["attributeId", "languageId"]
		version false
	}

	static constraints = {
		name maxSize: 64
	}
}
