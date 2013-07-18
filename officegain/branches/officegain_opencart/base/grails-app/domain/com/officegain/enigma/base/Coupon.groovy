package com.officegain.enigma.base

class Coupon {

	String name
	String code
	Character type
	BigDecimal discount
	Boolean logged
	Boolean shipping
	BigDecimal total
	Date dateStart
	Date dateEnd
	Integer usesTotal
	String usesCustomer
	Boolean status
	Date dateAdded

	static mapping = {
		id column: "coupon_id"
		version false
	}

	static constraints = {
		name maxSize: 128
		code maxSize: 10
		type maxSize: 1
		discount scale: 4
		total scale: 4
		usesCustomer maxSize: 11
	}
}
