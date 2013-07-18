package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class Counter implements Serializable {

    Date startDate
    Integer counter

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append startDate
        builder.append counter
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append startDate, other.startDate
        builder.append counter, other.counter
        builder.isEquals()
    }

    static mapping = {
    }

    static constraints = {
        startDate nullable: true, maxSize: 19
        counter nullable: true
    }
}
