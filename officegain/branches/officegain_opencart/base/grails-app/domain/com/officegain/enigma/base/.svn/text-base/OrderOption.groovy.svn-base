package com.officegain.enigma.base

class OrderOption {

    Long orderId
    Long orderProductId
    Long productOptionId
    Long productOptionValueId
	String name
	String value
	String type

	static mapping = {
		id column: "order_option_id"
		version false
	}

	static constraints = {
		value maxSize: 65535
		type maxSize: 32
	}
}
