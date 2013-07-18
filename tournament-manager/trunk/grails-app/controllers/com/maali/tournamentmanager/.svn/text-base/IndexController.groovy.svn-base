package com.maali.tournamentmanager

class IndexController {

    def index() {
        def Map<MSport, List<MTeam>> sportTeamMap = new HashMap<MSport, List<MTeam>>()
        MSport.list().each {
            def teamList = MTeam.findAllBySport(it)
            sportTeamMap.put(it, teamList)
        }
        [sportTeamMap: sportTeamMap]
    }
}
