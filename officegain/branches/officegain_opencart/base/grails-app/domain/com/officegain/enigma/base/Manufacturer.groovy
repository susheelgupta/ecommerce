package com.officegain.enigma.base

class Manufacturer {

	String name
	String image
	Integer sortOrder

	static mapping = {
		id column: "manufacturer_id"
		version false
	}

	static constraints = {
		name maxSize: 64
		image nullable: true
        sortOrder nullable: true
	}
}
