package com.officegain.enigma.base

class OrderHistory {

    Long orderId
    Long orderStatusId
	Boolean notify
	String comment
	Date dateAdded

	static mapping = {
		id column: "order_history_id"
		version false
	}

	static constraints = {
		comment maxSize: 65535
	}
}
