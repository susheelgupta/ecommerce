package com.officegain.enigma.base

class UserGroup {

    String name
    String permission

    static mapping = {
        id column: "user_group_id"
        version false
    }

    static constraints = {
        name maxSize: 64
        permission maxSize: 65535
    }
}
