package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class WeightClassRule implements Serializable {

    Integer weightClassFromId
    Integer weightClassToId
    BigDecimal weightClassRule
    WeightClass weightClassByWeightClassFromId
    WeightClass weightClassByWeightClassToId

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append weightClassFromId
        builder.append weightClassToId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append weightClassFromId, other.weightClassFromId
        builder.append weightClassToId, other.weightClassToId
        builder.isEquals()
    }

//    static belongsTo = [WeightClass]

    static mapping = {
    }

    static constraints = {
        weightClassRule scale: 4
    }
}
