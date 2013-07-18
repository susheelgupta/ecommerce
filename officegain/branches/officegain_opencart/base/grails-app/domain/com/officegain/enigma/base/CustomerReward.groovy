package com.officegain.enigma.base

class CustomerReward {

    Long customerId
    Long orderId
	String description
	Integer points
	Date dateAdded

	static mapping = {
		id column: "customer_reward_id"
		version false
	}

	static constraints = {
		description maxSize: 65535
	}
}
