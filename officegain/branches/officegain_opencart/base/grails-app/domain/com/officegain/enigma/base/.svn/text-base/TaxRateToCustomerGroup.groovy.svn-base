package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class TaxRateToCustomerGroup implements Serializable {

    Long taxRateId
    Long customerGroupId

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append taxRateId
		builder.append customerGroupId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append taxRateId, other.taxRateId
		builder.append customerGroupId, other.customerGroupId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["taxRateId", "customerGroupId"]
		version false
	}
}
