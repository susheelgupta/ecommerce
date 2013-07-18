package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class ProductToDownload implements Serializable {

    Long productId
    Long downloadId

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append productId
		builder.append downloadId
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append productId, other.productId
		builder.append downloadId, other.downloadId
		builder.isEquals()
	}

	static mapping = {
		id composite: ["productId", "downloadId"]
		version false
	}
}
