package com.maali.tournamentmanager

class MPaymentHistory {
    Long userId
    Date paymentDate
    Float paymentAmount
    Date lastPaid
    Date nextPaymentDate
    Boolean paymentDue

    static constraints = {
    }
}
