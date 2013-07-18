package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class AttributeGroupDescription implements Serializable {

    Long attributeGroupId
    Long languageId
	String name

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append attributeGroupId
		builder.append languageId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append attributeGroupId, other.attributeGroupId
		builder.append languageId, other.languageId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["attributeGroupId", "languageId"]
		version false
	}

	static constraints = {
		name maxSize: 64
	}
}
