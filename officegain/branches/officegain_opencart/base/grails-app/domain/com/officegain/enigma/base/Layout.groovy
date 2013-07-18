package com.officegain.enigma.base

class Layout {

	String name

	static mapping = {
		id column: "layout_id"
		version false
	}

	static constraints = {
		name maxSize: 64
	}
}
