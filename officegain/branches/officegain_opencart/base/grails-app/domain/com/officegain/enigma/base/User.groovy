package com.officegain.enigma.base

class User {
    transient springSecurityService

    Long userGroupId
    String username
    String password
    String firstname
    String lastname
    String email
    boolean enabled
    String code
    String ip
    Date dateAdded
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired

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

    static mapping = {
        id column: "user_id"
        version false
        password column: '`password`'
        tablePerHierarchy false
    }

    static constraints = {
        username maxSize: 40, blank: false, unique: true
        password maxSize: 256, blank: false
        firstname maxSize: 32
        lastname maxSize: 32
        email maxSize: 96, email: true, unique: true
        code maxSize: 32
        ip maxSize: 40
    }
}
