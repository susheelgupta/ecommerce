package com.officegain.enigma.base

class Affiliate {

	String firstname
	String lastname
	String email
	String telephone
	String fax
	String password
	String salt
	String company
	String website
	String address1
	String address2
	String city
	String postcode
    Long countryId
    Long zoneId
	String code
	BigDecimal commission
	String tax
	String payment
	String cheque
	String paypal
	String bankName
	String bankBranchNumber
	String bankSwiftCode
	String bankAccountName
	String bankAccountNumber
	String ip
	Boolean status
	Boolean approved
	Date dateAdded

	static mapping = {
		id column: "affiliate_id"
		version false
	}

	static constraints = {
		firstname maxSize: 32
		lastname maxSize: 32
		email maxSize: 96
		telephone maxSize: 32
		fax maxSize: 32
		password maxSize: 40
		salt maxSize: 9
		company maxSize: 32
		address1 maxSize: 128
		address2 maxSize: 128
		city maxSize: 128
		postcode maxSize: 10
		code maxSize: 64
		tax maxSize: 64
		payment maxSize: 6
		cheque maxSize: 100
		paypal maxSize: 64
		bankName maxSize: 64
		bankBranchNumber maxSize: 64
		bankSwiftCode maxSize: 64
		bankAccountName maxSize: 64
		bankAccountNumber maxSize: 64
		ip maxSize: 40
	}
}
