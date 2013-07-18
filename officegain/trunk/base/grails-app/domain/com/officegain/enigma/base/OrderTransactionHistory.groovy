package com.officegain.enigma.base

class OrderTransactionHistory {

	Integer transactionCode
	String transactionReturnValue
	Integer transactionReturnStatus
	Date dateAdded
	Order order

	static belongsTo = [Order]

	static mapping = {
	}

	static constraints = {
		transactionReturnValue maxSize: 65535
		dateAdded nullable: true, maxSize: 19
	}
}
