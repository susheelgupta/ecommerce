package com.officegain.enigma.base

class Review {

    String customerName
    Integer rating
    String comment
    Date dateAdded
    Date lastModified
    Integer readCount
    Boolean status
    Product product
    Customer customer

    static belongsTo = [Customer, Product]

    static mapping = {
    }

    static constraints = {
        rating nullable: true
        comment maxSize: 65535
        dateAdded nullable: true, maxSize: 19
        lastModified nullable: true, maxSize: 19
    }
}
