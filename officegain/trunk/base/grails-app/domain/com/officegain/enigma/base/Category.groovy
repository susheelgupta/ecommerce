package com.officegain.enigma.base

class Category {

    String name
    Boolean active = true
    String description
    String metaTitle
    String metaDescription
    String metaKeywords
    Integer sortOrder
    Date dateAdded
    Date lastModified
    Category parentCategory
    CategoryImage categoryImage
    static hasMany = [childCategories: Category, products: Product]

    static mapping = {
        parentCategory(lazy: false)
        childCategories cascade: "all-delete-orphan"
    }

    static constraints = {
        name blank: false, nullable: false
        description nullable: true
        metaTitle nullable: true
        metaDescription nullable: true
        metaKeywords nullable: true
        sortOrder nullable: true
        parentCategory nullable: true
        categoryImage nullable: true
    }

    String getPath() {
        if (parentCategory != null) {
            return parentCategory.getPath() + ' -> ' + name
        } else {
            return name
        }
    }

    boolean equals(o) {
        if (this.is(o)) return true
        if (getClass() != o.class) return false
        Category category = (Category) o
        if (id != category.id) return false
        return true
    }

    int hashCode() {
        return id.hashCode()
    }

    static def recurGenerateCategoryTree(Category category, Set<Category> resultCategories) {
        resultCategories.add(category)
        def childCategories = category.childCategories
        for (Category childCategory: childCategories) {
            recurGenerateCategoryTree(childCategory, resultCategories)
        }
    }

    static List<Category> getResultCategories(Category category) {
        if (category.id == null) {
            return Category.list()
        }
        Set<Category> resultCategories = new HashSet<Category>()
        def childCategories = category.childCategories.toList()
        for (Category childCategory: childCategories) {
            recurGenerateCategoryTree(childCategory, resultCategories)
        }
        def finalSet = new HashSet<Category>()
        for (Category category1: Category.list()) {
            finalSet.add(category1)
        }
        finalSet.removeAll(resultCategories)
        finalSet.remove(category)
        return finalSet.toList()
    }
}
