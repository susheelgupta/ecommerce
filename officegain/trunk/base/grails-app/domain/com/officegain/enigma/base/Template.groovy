package com.officegain.enigma.base

class Template {

    String title
    String code
    String authorName
    String authorWww
    String markupVersion
    Byte cssBased
    String medium

    static hasMany = [templateBoxToPages: TemplateBoxToPage]

    static mapping = {
    }

    static constraints = {
        authorWww nullable: true
        markupVersion nullable: true
        cssBased nullable: true
        medium nullable: true
    }
}
