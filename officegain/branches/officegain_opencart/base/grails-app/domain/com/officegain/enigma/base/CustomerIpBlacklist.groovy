package com.officegain.enigma.base

class CustomerIpBlacklist {

	String ip

	static mapping = {
		id column: "customer_ip_blacklist_id"
		version false
	}

	static constraints = {
		ip maxSize: 40
	}
}
