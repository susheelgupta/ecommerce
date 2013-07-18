package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class OptionDescription implements Serializable {

    Long optionId
    Long languageId
	String name

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append optionId
		builder.append languageId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append optionId, other.optionId
		builder.append languageId, other.languageId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["optionId", "languageId"]
		version false
	}

	static constraints = {
		name maxSize: 128
        languageId nullable: true
	}
}
