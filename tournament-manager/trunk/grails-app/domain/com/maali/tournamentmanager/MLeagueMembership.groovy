package com.maali.tournamentmanager

class MLeagueMembership {
    Long leagueId
    String leagueMembershipCol

    static constraints = {
        leagueMembershipCol nullable: false, blank: false
    }
}
