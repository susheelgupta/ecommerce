package com.officegain.enigma.base

class ReturnHistory {

    Long returnId
    Long returnStatusId
	Boolean notify
	String comment
	Date dateAdded

	static mapping = {
		id column: "return_history_id"
		version false
	}

	static constraints = {
		comment maxSize: 65535
	}
}
