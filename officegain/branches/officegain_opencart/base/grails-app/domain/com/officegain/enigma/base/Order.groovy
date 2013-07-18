package com.officegain.enigma.base

class Order {

    Integer invoiceNo
    String invoicePrefix
    Integer storeId
    String storeName
    String storeUrl
    Long customerId
    Long customerGroupId
    String firstname
    String lastname
    String email
    String telephone
    String fax
    String paymentFirstname
    String paymentLastname
    String paymentCompany
    String paymentCompanyId
    String paymentTaxId
    String paymentAddress1
    String paymentAddress2
    String paymentCity
    String paymentPostcode
    String paymentCountry
    Long paymentCountryId
    String paymentZone
    Long paymentZoneId
    String paymentAddressFormat
    String paymentMethod
    String paymentCode
    String shippingFirstname
    String shippingLastname
    String shippingCompany
    String shippingAddress1
    String shippingAddress2
    String shippingCity
    String shippingPostcode
    String shippingCountry
    Long shippingCountryId
    String shippingZone
    Long shippingZoneId
    String shippingAddressFormat
    String shippingMethod
    String shippingCode
    String comment
    BigDecimal total
    Long orderStatusId
    Long affiliateId
    BigDecimal commission
    Long languageId
    Long currencyId
    String currencyCode
    BigDecimal currencyValue
    String ip
    String forwardedIp
    String userAgent
    String acceptLanguage
    Date dateAdded
    Date dateModified

    static mapping = {
        table name: "`order`"
        id column: "order_id"
        version false
    }

    static constraints = {
        invoicePrefix maxSize: 26
        storeName maxSize: 64
        firstname maxSize: 32
        lastname maxSize: 32
        email maxSize: 96
        telephone maxSize: 32
        fax maxSize: 32
        paymentFirstname maxSize: 32
        paymentLastname maxSize: 32
        paymentCompany maxSize: 32
        paymentCompanyId maxSize: 32
        paymentTaxId maxSize: 32
        paymentAddress1 maxSize: 128
        paymentAddress2 maxSize: 128
        paymentCity maxSize: 128
        paymentPostcode maxSize: 10
        paymentCountry maxSize: 128
        paymentZone maxSize: 128
        paymentAddressFormat maxSize: 65535
        paymentMethod maxSize: 128
        paymentCode maxSize: 128
        shippingFirstname maxSize: 32
        shippingLastname maxSize: 32
        shippingCompany maxSize: 32
        shippingAddress1 maxSize: 128
        shippingAddress2 maxSize: 128
        shippingCity maxSize: 128
        shippingPostcode maxSize: 10
        shippingCountry maxSize: 128
        shippingZone maxSize: 128
        shippingAddressFormat maxSize: 65535
        shippingMethod maxSize: 128
        shippingCode maxSize: 128
        comment maxSize: 65535
        total scale: 4
        commission scale: 4
        currencyCode maxSize: 3
        currencyValue scale: 8
        ip maxSize: 40
        forwardedIp maxSize: 40
    }
}
