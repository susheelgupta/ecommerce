package com.maali.tournamentmanager

class MSport {
    String sportName
    Boolean sportType
    Integer numberPlayersPerTeam
    Integer numberTeamsPerGame
    Boolean indoor
    static constraints = {
        sportName blank: false, nullable: false
    }
}
