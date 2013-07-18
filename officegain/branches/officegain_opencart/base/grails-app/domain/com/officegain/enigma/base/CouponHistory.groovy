package com.officegain.enigma.base

class CouponHistory {

    Long couponId
    Long orderId
    Long customerId
	BigDecimal amount
	Date dateAdded

	static mapping = {
		id column: "coupon_history_id"
		version false
	}

	static constraints = {
		amount scale: 4
	}
}
