package com.officegain.enigma.base

class ProductOption {

    Long productId
    Long optionId
	String optionValue
	Boolean required

	static mapping = {
		id column: "product_option_id"
		version false
	}

	static constraints = {
		optionValue maxSize: 65535
	}
}
