package com.officegain.enigma.base

class GeoZone {

	String name
	String description
	Date dateModified
	Date dateAdded

	static mapping = {
		id column: "geo_zone_id"
		version false
	}

	static constraints = {
		name maxSize: 32
	}
}
