package com.maali.tournamentmanager

class MLeague {
    String name
    MSport sport
    String address
    String email
    String additionalEmail
    String phoneNo
    String phoneExt
    Date yearOfFormation

    static constraints = {
        name blank: false, nullable: false
        address blank: false, nullable: false
        email email: true, nullable: false, blank: false
        additionalEmail email: true, nullable: false, blank: false
        phoneNo maxSize: 12, nullable: false, unique: true
        phoneExt maxSize: 12, nullable: false, unique: true

    }
}
