package com.officegain.enigma.base

class Review {

    Long productId
    Long customerId
	String author
	String text
	Integer rating
	Boolean status
	Date dateAdded
	Date dateModified

	static mapping = {
		id column: "review_id"
		version false
	}

	static constraints = {
		author maxSize: 64
		text maxSize: 65535
	}
}
