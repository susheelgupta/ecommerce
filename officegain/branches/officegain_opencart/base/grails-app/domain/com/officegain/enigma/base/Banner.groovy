package com.officegain.enigma.base

class Banner {

	String name
	Boolean status

	static mapping = {
		id column: "banner_id"
		version false
	}

	static constraints = {
		name maxSize: 64
	}
}
