package com.officegain.enigma.base

class Voucher {

    Long orderId
    String code
    String fromName
    String fromEmail
    String toName
    String toEmail
    Long voucherThemeId
    String message
    BigDecimal amount
    Boolean status
    Date dateAdded

    static mapping = {
        id column: "voucher_id"
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
