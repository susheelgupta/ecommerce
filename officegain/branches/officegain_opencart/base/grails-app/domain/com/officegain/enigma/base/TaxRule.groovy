package com.officegain.enigma.base

class TaxRule {

    Long taxClassId
    Long taxRateId
	String based
	Integer priority

	static mapping = {
		id column: "tax_rule_id"
		version false
	}

	static constraints = {
		based maxSize: 10
	}
}
