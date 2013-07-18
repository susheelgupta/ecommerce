package com.officegain.enigma.base

class OrderProduct {

    Long orderId
    Long productId
	String name
	String model
	Integer quantity
	BigDecimal price
	BigDecimal total
	BigDecimal tax
	Integer reward

	static mapping = {
		id column: "order_product_id"
		version false
	}

	static constraints = {
		model maxSize: 64
		price scale: 4
		total scale: 4
		tax scale: 4
	}
}
