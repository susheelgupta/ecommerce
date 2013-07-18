package com.officegain.enigma.base

class Administrator {

    String userName
    String password

    static hasMany = [administratorShortcuts: AdministratorShortcut, administratorAccesses: AdministratorAccess, administratorLogs: AdministratorLog]

    static mapping = {
    }

    static constraints = {
        password maxSize: 40
    }
}
