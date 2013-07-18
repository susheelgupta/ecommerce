package com.officegain.enigma.base

class CustomerGroup {

    Integer approval
    Integer companyIdDisplay
    Integer companyIdRequired
    Integer taxIdDisplay
    Integer taxIdRequired
    Integer sortOrder

    static mapping = {
        id column: "customer_group_id"
        version false
    }
    static constraints = {
        approval (nullable: true)
        sortOrder(nullable: true)
    }
}
