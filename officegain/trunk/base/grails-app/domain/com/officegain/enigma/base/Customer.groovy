package com.officegain.enigma.base

class Customer extends User {

    String gender
    String firstName
    String lastName
    Date dateOfBirth
    String telephone
    String fax
    Character newsletter
    Integer status
    String ipAddress
    Date dateLastLogon
    Integer numberOfLogons
    Date dateAccountCreated
    Date dateAccountLastModified
    Integer globalProductNotifications

    static hasMany = [addressBooks: AddressBook, productNotifications: ProductNotification, reviews: Review, orders: Order,
            shoppingCartCustomVariantValues: ShoppingCartCustomVariantValue, shoppingCarts: ShoppingCart, whosOnlines: WhosOnline]

    static mapping = {
    }

    static constraints = {
        gender nullable: true, maxSize: 1
        firstName blank: false, nullable: true
        lastName blank: false, nullable: true
        dateOfBirth nullable: true, maxSize: 19
        telephone nullable: true
        fax nullable: true
        newsletter nullable: true, maxSize: 1
        status nullable: true
        ipAddress nullable: true, maxSize: 15
        dateLastLogon nullable: true, maxSize: 19
        numberOfLogons nullable: true
        dateAccountCreated nullable: true, maxSize: 19
        dateAccountLastModified nullable: true, maxSize: 19
        globalProductNotifications nullable: true
    }
}
