package com.officegain.enigma.base

class BannerHistory {

    Integer bannersShown
    Integer bannersClicked
    Date bannersHistoryDate
    Banner banner

    static belongsTo = [Banner]

    static mapping = {
    }

    static constraints = {
        bannersHistoryDate maxSize: 19
    }
}
