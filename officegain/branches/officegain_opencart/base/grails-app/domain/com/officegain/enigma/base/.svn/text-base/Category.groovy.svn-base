package com.officegain.enigma.base

class Category {

    String image
    Long parentId
    Boolean top
    Integer column
    Integer sortOrder
    Boolean status
    Date dateAdded
    Date dateModified

    static mapping = {
        column column: "`column`"
        id column: "category_id"
        version false
    }

    static constraints = {
        image nullable: true
        top nullable: true
        column nullable: true
        sortOrder nullable: true
        status nullable: true
        dateAdded nullable: true
        dateModified nullable: true
        parentId nullable: true
    }
}
