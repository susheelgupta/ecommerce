package com.officegain.enigma.admin

import com.officegain.enigma.base.Category

class AdminSearchController {

    def searchableService
    def index = {
        def rootCategory = Category.findByParentCategoryIsNull()
        def categoryInstanceId = rootCategory.getId()
        if (params.id) {
            categoryInstanceId = Long.parseLong(params.id)
        }
        def max = Math.min(params.max ? params.int('max') : 10, 100)
        def offset = params.offset ? params.int('offset') : 0
        def data = ProductController.generateCategoryTreeXml(rootCategory.getId(), categoryInstanceId)
        if (!params.q?.trim()) {
            return [:]
        }
        try {
            return [data: data, searchResult: searchableService.search(params.q, params), id: categoryInstanceId]
        } catch (Exception ex) {
            return [parseException: true]
        }
    }
    def indexAll = {
        Thread.start {
            searchableService.index()
        }
        render("bulk index started in a background thread")
    }

    def searchAJAX = {
        def searchResults = searchableService.search(params.query, params)
        def products = searchResults.results
        render(contentType: "text/xml") {
            results() {
                products.each { product ->
                    result() {
                        name(product.name)
                        id(product.id)
                    }
                }
            }
        }
    }
}

