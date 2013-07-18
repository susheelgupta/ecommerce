package com.officegain.enigma.base

class CustomerOnline {

	String ip
    Long customerId
	String url
	String referer
	Date dateAdded

	static mapping = {
		id name: "ip", generator: "assigned"
		version false
	}

	static constraints = {
		ip maxSize: 40
		url maxSize: 65535
		referer maxSize: 65535
	}
}
