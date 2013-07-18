package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class BannerImageDescription implements Serializable {

    Long bannerImageId
    Long languageId
    Long bannerId
	String title

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append bannerImageId
		builder.append languageId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append bannerImageId, other.bannerImageId
		builder.append languageId, other.languageId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["bannerImageId", "languageId"]
		version false
	}

	static constraints = {
		title maxSize: 64
	}
}
