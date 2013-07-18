package com.maali.tournamentmanager

class MInstitution extends User {

    String name
    String type
    String address
    String phone
    String phoneExt
    String email1
    String email2
    Boolean membershipFee
    Float annualMembershipAmount
    String currency

    static mapping = {
        version false
    }
    static constraints = {
        email1 nullable: false, blank: false, email: true
        email2 nullable: false, blank: false, email: true
        currency blank: false, nullable: false
        phone maxSize: 12, nullable: false, unique: true
        phoneExt maxSize: 14, nullable: false, unique: true
        annualMembershipAmount bindable: false, scale: 2
    }
}
