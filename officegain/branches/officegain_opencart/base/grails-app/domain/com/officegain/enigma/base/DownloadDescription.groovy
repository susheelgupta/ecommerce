package com.officegain.enigma.base

import org.apache.commons.lang.builder.EqualsBuilder
import org.apache.commons.lang.builder.HashCodeBuilder

class DownloadDescription implements Serializable {

    Long downloadId
    Long languageId
    String name

    int hashCode() {
        def builder = new HashCodeBuilder()
        builder.append downloadId
        builder.append languageId
        builder.toHashCode()
    }

    boolean equals(other) {
        if (other == null) return false
        def builder = new EqualsBuilder()
        builder.append downloadId, other.downloadId
        builder.append languageId, other.languageId
        builder.isEquals()
    }

    static mapping = {
        id composite: ["downloadId", "languageId"]
        version false
    }

    static constraints = {
        name maxSize: 64
    }
}
