package com.officegain.enigma.base

class Address {

	Long customerId
	String firstname
	String lastname
	String company
	String companyId
	String taxId
	String address1
	String address2
	String city
	String postcode
	Long countryId
    Long zoneId

	static mapping = {
		id column: "address_id"
		version false
	}

	static constraints = {
		firstname maxSize: 32
		lastname maxSize: 32
		company maxSize: 32
		companyId maxSize: 32
		taxId maxSize: 32
		address1 maxSize: 128
		address2 maxSize: 128
		city maxSize: 128
		postcode maxSize: 10
	}
}
