package com.officegain.enigma.base

class OrderDownload {

    Long orderId
    Long orderProductId
	String name
	String filename
	String mask
	Integer remaining

	static mapping = {
		id column: "order_download_id"
		version false
	}

	static constraints = {
		name maxSize: 64
		filename maxSize: 128
		mask maxSize: 128
	}
}
