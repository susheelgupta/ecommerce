package com.officegain.enigma.base

class AffiliateTransaction {

    Long affiliateId
    Long orderId
	String description
	BigDecimal amount
	Date dateAdded

	static mapping = {
		id column: "affiliate_transaction_id"
		version false
	}

	static constraints = {
		description maxSize: 65535
		amount scale: 4
	}
}
