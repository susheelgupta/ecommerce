package com.officegain.enigma.base

class CustomerTransaction {

    Long customerId
    Long orderId
	String description
	BigDecimal amount
	Date dateAdded

	static mapping = {
		id column: "customer_transaction_id"
		version false
	}

	static constraints = {
		description maxSize: 65535
		amount scale: 4
	}
}
