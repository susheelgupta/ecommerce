package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class VoucherThemeDescription implements Serializable {

    Long voucherThemeId
    Long languageId
	String name

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append voucherThemeId
		builder.append languageId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append voucherThemeId, other.voucherThemeId
		builder.append languageId, other.languageId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["voucherThemeId", "languageId"]
		version false
	}

	static constraints = {
		name maxSize: 32
	}
}
