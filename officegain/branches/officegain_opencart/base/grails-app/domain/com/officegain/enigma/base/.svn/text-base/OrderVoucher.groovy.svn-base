package com.officegain.enigma.base

class OrderVoucher {

    Long orderId
    Long voucherId
	String description
	String code
	String fromName
	String fromEmail
	String toName
	String toEmail
    Long voucherThemeId
	String message
	BigDecimal amount

	static mapping = {
		id column: "order_voucher_id"
		version false
	}

	static constraints = {
		code maxSize: 10
		fromName maxSize: 64
		fromEmail maxSize: 96
		toName maxSize: 64
		toEmail maxSize: 96
		message maxSize: 65535
		amount scale: 4
	}
}
