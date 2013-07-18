package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class WhosOnline implements Serializable {

    String fullName
    String sessionId
    String ipAddress
    String timeEntry
    String timeLastClick
    String lastPageUrl
    Customer customer

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append customer.id
        builder.append fullName
        builder.append sessionId
        builder.append ipAddress
        builder.append timeEntry
        builder.append timeLastClick
        builder.append lastPageUrl
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append customer.id, other.customer.id
        builder.append fullName, other.fullName
        builder.append sessionId, other.sessionId
        builder.append ipAddress, other.ipAddress
        builder.append timeEntry, other.timeEntry
        builder.append timeLastClick, other.timeLastClick
        builder.append lastPageUrl, other.lastPageUrl
        builder.isEquals()
    }

    static belongsTo = [Customer]

    static mapping = {
    }

    static constraints = {
        sessionId maxSize: 128
        ipAddress maxSize: 15
        timeEntry maxSize: 14
        timeLastClick maxSize: 14
        lastPageUrl maxSize: 65535
    }
}
