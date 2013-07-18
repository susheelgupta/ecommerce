package com.maali.tournamentmanager

class User {

    transient springSecurityService

    String emailAddress;
    String password
    boolean enabled
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

    static constraints = {
        emailAddress blank: false, unique: true, email: true
        password blank: false
    }

    static mapping = {
        password column: '`password`'
        tablePerHierarchy false
    }

    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    def beforeInsert() {
        encodePassword()
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            encodePassword()
        }
    }

    protected void encodePassword() {
        password = springSecurityService.encodePassword(password)
    }
}
