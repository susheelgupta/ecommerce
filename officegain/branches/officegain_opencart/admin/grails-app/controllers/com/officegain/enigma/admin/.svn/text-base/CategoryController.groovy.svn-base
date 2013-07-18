package com.officegain.enigma.admin

import com.officegain.enigma.base.Category
import com.officegain.enigma.base.CategoryDescription

class CategoryController {
    static allowedMethods = [save: "POST", update: "POST", show: "GET", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def categoryList = Category.list();
        def categoryDescriptionMap = new HashMap<Category, CategoryDescription>()
        for (Category category: categoryList) {
            CategoryDescription categoryDescription = CategoryDescription.findByCategoryId(category.id)
            categoryDescriptionMap.put(category, categoryDescription)
        }
        [categoryDescriptionMap: categoryDescriptionMap]
    }

    def insert() {
        [categoryInstance: new Category(params)]
    }

    def save() {
        def categoryInstance = new Category(params)
        categoryInstance.dateAdded = new Date()
        categoryInstance.dateModified = new Date()
        if (!categoryInstance.save(flush: true)) {
            render(view: "insert", model: [categoryInstance: categoryInstance])
            return
        }
        def CategoryDescription categoryDescriptionInstance = new CategoryDescription(params)
        categoryDescriptionInstance.categoryId = categoryInstance.id
        categoryDescriptionInstance.languageId = 1
        if (!categoryDescriptionInstance.save(flush: true)) {
            render(view: "insert", model: [categoryInstance: categoryInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.categoryIds != '') {
            String[] categoryIds = params.categoryIds.split(",")
            categoryIds.each {it ->
                Category.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }

    def show() {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            return
        }
        def CategoryDescription categoryDescriptionInstance = CategoryDescription.findByCategoryId(params.id)
        if (!categoryDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            return
        }
        [categoryInstance: categoryInstance, categoryDescriptionInstance: categoryDescriptionInstance]
    }

    def update() {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
            return
        }
        if (params.version) {
            def version = params.version.toLong()
            if (categoryInstance.version > version) {
                categoryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'category.label', default: 'Category')] as Object[],
                        "Another user has updated this Category while you were editing")
                render(view: "create", model: [categoryInstance: categoryInstance])
                return
            }
        }

        categoryInstance.properties = params
        if (!categoryInstance.save(flush: true, failOnError: true)) {
            render(view: "list", model: [categoryInstance: categoryInstance])
            return
        }

        def CategoryDescription categoryDescriptionInstance = CategoryDescription.findByCategoryId(params.id)
        if (!categoryDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            return
        }
        categoryDescriptionInstance.properties = params
        if (!categoryDescriptionInstance.save(flush: true)) {
            render(view: "show", model: [categoryInstance: categoryInstance, categoryDescriptionInstance: categoryDescriptionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "list")
    }
}
