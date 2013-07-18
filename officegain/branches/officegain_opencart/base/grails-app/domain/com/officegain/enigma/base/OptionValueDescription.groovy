package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class OptionValueDescription implements Serializable {

    Long optionValueId
    Long languageId
    Long optionId
	String name

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append optionValueId
		builder.append languageId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append optionValueId, other.optionValueId
		builder.append languageId, other.languageId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["optionValueId", "languageId"]
		version false
	}

	static constraints = {
		name maxSize: 128
	}
}
