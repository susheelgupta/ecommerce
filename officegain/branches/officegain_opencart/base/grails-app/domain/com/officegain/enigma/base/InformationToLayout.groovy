package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class InformationToLayout implements Serializable {

    Long informationId
    Long storeId
    Long layoutId

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append informationId
		builder.append storeId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append informationId, other.informationId
		builder.append storeId, other.storeId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["informationId", "storeId"]
		version false
	}
}
