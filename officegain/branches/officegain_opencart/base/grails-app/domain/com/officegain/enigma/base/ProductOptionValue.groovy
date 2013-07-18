package com.officegain.enigma.base

class ProductOptionValue {

    Long productOptionId
    Long productId
    Long optionId
    Long optionValueId
	Integer quantity
	Boolean subtract
	BigDecimal price
	String pricePrefix
	Integer points
	String pointsPrefix
	BigDecimal weight
	String weightPrefix

	static mapping = {
		id column: "product_option_value_id"
		version false
	}

	static constraints = {
		price scale: 4
		pricePrefix maxSize: 1
		pointsPrefix maxSize: 1
		weight scale: 8
		weightPrefix maxSize: 1
	}
}
