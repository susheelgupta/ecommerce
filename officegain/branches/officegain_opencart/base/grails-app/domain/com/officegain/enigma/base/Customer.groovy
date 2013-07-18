package com.officegain.enigma.base

class Customer {

    Long storeId
    String firstname
    String lastname
    String email
    String telephone
    String fax
    String password
    String salt
    String cart
    String wishlist
    Boolean newsletter
    Long addressId
    Long customerGroupId
    String ip
    Boolean status
    Boolean approved
    String token
    Date dateAdded

    static mapping = {
        id column: "customer_id"
        version false
    }

    static constraints = {
        firstname maxSize: 32
        lastname maxSize: 32
        email maxSize: 96,unique: true
        telephone maxSize: 32
        fax maxSize: 32
        password maxSize: 40 ,range: 4..40
        salt maxSize: 9 ,nullable: true
        cart nullable: true, maxSize: 65535
        wishlist nullable: true, maxSize: 65535
        ip maxSize: 40,nullable: true
        addressId nullable: true
    }
}
