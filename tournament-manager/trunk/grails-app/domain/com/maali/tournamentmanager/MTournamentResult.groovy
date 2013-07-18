package com.maali.tournamentmanager

class MTournamentResult {
    Long teamId1
    Long teamId2
    Long userId1
    Long userId2
    String round
    String winner
    String looser
    String score
    Long matchId

    static constraints = {
        round blank: false, nullable: false
        winner blank: false, nullable: false
        looser blank: false, nullable: false
        score blank: false, nullable: false
    }
}
