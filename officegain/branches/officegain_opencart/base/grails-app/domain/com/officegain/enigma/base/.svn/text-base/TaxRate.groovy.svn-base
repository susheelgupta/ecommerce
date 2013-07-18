package com.officegain.enigma.base

class TaxRate {

    Long geoZoneId
	String name
	BigDecimal rate
	Character type
	Date dateAdded
	Date dateModified

	static mapping = {
		id column: "tax_rate_id"
		version false
	}

	static constraints = {
		name maxSize: 32
		rate scale: 4
		type maxSize: 1
	}
}
