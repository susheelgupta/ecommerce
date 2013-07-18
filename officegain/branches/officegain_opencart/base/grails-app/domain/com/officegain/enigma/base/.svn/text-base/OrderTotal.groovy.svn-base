package com.officegain.enigma.base

class OrderTotal {

    Long orderId
	String code
	String title
	String text
	BigDecimal value
	Integer sortOrder

	static mapping = {
		id column: "order_total_id"
		version false
	}

	static constraints = {
		code maxSize: 32
		value scale: 4
	}
}
