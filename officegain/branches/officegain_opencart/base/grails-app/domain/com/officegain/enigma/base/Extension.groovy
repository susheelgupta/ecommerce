package com.officegain.enigma.base

class Extension {

	String type
	String code

	static mapping = {
		id column: "extension_id"
		version false
	}

	static constraints = {
		type maxSize: 32
		code maxSize: 32
	}
}
