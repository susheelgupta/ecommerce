package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class NewsletterLog implements Serializable {

	String emailAddress
	Date dateSent
	Newsletter newsletter

	int hashCode() {
		def builder = new HashCodeBuilder()
		builder.append newsletter.id
		builder.append emailAddress
		builder.append dateSent
		builder.toHashCode()
	}

	boolean equals(other) {
		if (other == null) return false
		def builder = new EqualsBuilder()
		builder.append newsletter.id, other.newsletter.id
		builder.append emailAddress, other.emailAddress
		builder.append dateSent, other.dateSent
		builder.isEquals()
	}

	static belongsTo = [Newsletter]

	static mapping = {
	}

	static constraints = {
		dateSent nullable: true, maxSize: 19
	}
}
