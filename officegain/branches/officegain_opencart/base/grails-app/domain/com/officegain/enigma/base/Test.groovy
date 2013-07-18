package com.officegain.enigma.base

class Test {
    String name
    String email

    static constraints = {
        name nullable: false, blank: false
        email(unique: true)
    }
}
