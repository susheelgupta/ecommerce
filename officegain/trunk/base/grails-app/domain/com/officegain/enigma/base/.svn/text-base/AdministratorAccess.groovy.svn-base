package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class AdministratorAccess implements Serializable {

    String module
    Administrator administrator

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append administrator.id
        builder.append module
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append administrator.id, other.administrator.id
        builder.append module, other.module
        builder.isEquals()
    }

    static belongsTo = [Administrator]

    static mapping = {
    }
}
