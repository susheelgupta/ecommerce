package com.officegain.enigma.base

class OptionValue {

    Long optionId
	String image
	Integer sortOrder

	static mapping = {
		id column: "option_value_id"
		version false
	}
}
