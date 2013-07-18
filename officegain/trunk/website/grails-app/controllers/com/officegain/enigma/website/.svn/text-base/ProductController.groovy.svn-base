package com.officegain.enigma.website

import com.officegain.enigma.base.Category
import com.officegain.enigma.base.Customer
import com.officegain.enigma.base.Product
import com.officegain.enigma.base.Review
import grails.converters.JSON
import groovy.xml.MarkupBuilder

class ProductController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def springSecurityService

    def search = {
        if (!params.q?.trim()) {
            return [productList: null, productCount: 0]
        }
        def max = Math.min(params.max ? params.int('max') : 10, 100)
        def offset = params.offset ? params.int('offset') : 0
        def sort = params.sort ?: "name"
        def order = params.order ?: "asc"
        def productList = Product.findAllByNameIlike(params.q, [max: max, offset: offset])
        [productList: productList, productCount: productList.size()]
    }

    def index = {
        redirect(action: "list", params: params)
    }
    def show = {
        def product = Product.get(params.id)
        def reviewList = Review.findAllByProduct(product)
        [product: product, reviewList: reviewList]
    }

    def list() {
        def rootCategory = Category.findByParentCategoryIsNull()
        def categoryInstanceId = rootCategory.getId()
        if (params.id) {
            categoryInstanceId = Long.parseLong(params.id)
        }
        def max = Math.min(params.max ? params.int('max') : 10, 100)
        def offset = params.offset ? params.int('offset') : 0
        def sort = params.sort ?: "name"
        def order = params.order ?: "asc"
        def data = generateCategoryTreeXml(rootCategory.getId(), categoryInstanceId)
        def requiredCategories = getRequiredCategories(Category.get(categoryInstanceId))
        def allProductList = new ArrayList<Product>()
        for (Category category in requiredCategories) {
            def tempProductList = Product.findAll("from Product as p where p.category=:category order by p." + sort + " " + order, [category: category])
            allProductList.addAll(tempProductList)
        }
        List<Product> productList = new ArrayList<Product>()
        if (allProductList.size() < offset + max) {
            if (allProductList.size() != 0) {
                productList.addAll(allProductList.subList(offset, allProductList.size()))
            }
        } else {
            productList.addAll(allProductList.subList(offset, offset + max))
        }
        [data: data, productList: productList, productCount: allProductList.size(), id: categoryInstanceId]
    }

    static Set<Category> getRequiredCategories(Category category) {
        Set<Category> requiredCategories = new HashSet<Category>()
        requiredCategories.add(category)
        def childCategories = category.childCategories.toList()
        requiredCategories.addAll(category.childCategories.toList())
        for (Category childCategory: childCategories) {
            recurGenerateCategoryTree(childCategory, requiredCategories)
        }
        return requiredCategories
    }

    static def recurGenerateCategoryTree(Category category, Set<Category> requiredCategories) {
        requiredCategories.add(category)
        def childCategories = category.childCategories.toList()
        requiredCategories.addAll(childCategories)
        for (Category childCategory: childCategories) {
            recurGenerateCategoryTree(childCategory, requiredCategories)
        }
    }

    def getProducts() {
        def categoryInstanceId = params.id
        def max = Math.min(params.max ? params.int('max') : 10, 100)
        def offset = params.offset ? params.int('offset') : 0
        def sort = params.sort ?: "name"
        def order = params.order ?: "asc"
        def requiredCategories = getRequiredCategories(Category.get(categoryInstanceId))
        def allProductList = new ArrayList<Product>()
        for (Category category in requiredCategories) {
            def tempProductList = Product.findAll("from Product as p where p.category=:category order by p." + sort + " " + order,
                    [category: category], [max: max, offset: offset])
            allProductList.addAll(tempProductList)
        }
        List<Product> productList = new ArrayList<Product>()
        if (allProductList.size() < offset + max) {
            if (allProductList.size() != 0) {
                productList.addAll(allProductList.subList(offset, allProductList.size()))
            }
        } else {
            productList.addAll(allProductList.subList(offset, offset + max))
        }
        List<Map<String, Object>> productImageMapList = new ArrayList<HashMap<String, Object>>()
        productList.each {
            Map productImageMap = new HashMap<String, Object>()
            productImageMap.put('product', it)
            productImageMap.put('imageUrl', WebsiteUtil.productDefaultImageUrl(it))
            productImageMapList.add(productImageMap)
        }
        render productImageMapList as JSON
    }

    public static def generateCategoryTreeXml(def categoryId, Long selectedCategoryId) {
        StringWriter writer = new StringWriter()
        MarkupBuilder categoryTreeXml = new MarkupBuilder(writer)
        Category rootCategory = Category.get(categoryId)
        recurGenerateCategoryTreeXml(rootCategory, categoryTreeXml, selectedCategoryId)
        return writer.toString()
    }

    public static def recurGenerateCategoryTreeXml(Category category, MarkupBuilder categoryTreeXml, Long selectedCategoryId) {
        categoryTreeXml.category(name: category.name, id: category.id, icon: 'icon-' + category.id) {
            def childCategories = category.childCategories.toList()
            Collections.sort(childCategories, new Comparator<Category>() {
                int compare(Category o1, Category o2) {
                    return o1.name.compareTo(o2.name)
                }
            })
            for (Category childCategory: childCategories) {
                recurGenerateCategoryTreeXml(childCategory, categoryTreeXml, selectedCategoryId)
            }
        }
    }

    def getCurrentCustomer() {
        return Customer.get(springSecurityService.principal.id)
    }

    def customerReview() {
        def reviewInstance = new Review()
        reviewInstance.comment = params.comment
        reviewInstance.product = Product.get(params.id)
        reviewInstance.customer = Customer.get(springSecurityService.principal.id)
        reviewInstance.customerName = reviewInstance.customer.getFirstName()
        reviewInstance.rating = Integer.parseInt(params.rating)
        reviewInstance.dateAdded = Calendar.getInstance().getTime();
        reviewInstance.lastModified = Calendar.getInstance().getTime();
        reviewInstance.status = true;
        reviewInstance.readCount = 1;
        if (!reviewInstance.save(flush: true, failOnError: true)) {
            render(view: "create", model: [reviewInstance: reviewInstance])
            return
        }
        redirect(action: "show", params: params)
    }
}

