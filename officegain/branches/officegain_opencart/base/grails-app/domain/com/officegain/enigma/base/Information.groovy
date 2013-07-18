package com.officegain.enigma.base

class Information {

	Boolean bottom
	Integer sortOrder
	Boolean status

	static mapping = {
		id column: "information_id"
		version false
	}
}
