package com.officegain.enigma.admin

import com.officegain.enigma.base.Category
import com.officegain.enigma.base.CategoryImage
import com.officegain.enigma.base.Product
import grails.converters.JSON
import groovy.xml.MarkupBuilder
import org.springframework.dao.DataIntegrityViolationException

class CategoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def rootCategory = Category.findByParentCategoryIsNull()
        def categoryInstanceId = rootCategory?.id
        if (rootCategory == null) {
            return [data: "", productList: new ArrayList<Product>(), productCount: 0, id: categoryInstanceId]
        }
        if (params.id) {
            categoryInstanceId = Long.parseLong(params.id)
        }
        def max = Math.min(params.max ? params.int('max') : 10, 100)
        def offset = params.offset ? params.int('offset') : 0
        def sort = params.sort ?: "name"
        def order = params.order ?: "asc"
        def data = generateCategoryTreeXml(rootCategory.id, categoryInstanceId)
        def requiredCategories = getRequiredCategories(Category.get(categoryInstanceId))
        def allProductList = new ArrayList<Product>()
        def productCount = 0;
        for (Category category in requiredCategories) {
            allProductList.addAll(Product.findAllByCategory(category))
            productCount += Product.countByCategory(category)
        }
        Collections.sort(allProductList, new Comparator<Product>() {
            int compare(Product o1, Product o2) {
                if (order.equalsIgnoreCase("asc")) {
                    if (sort.equalsIgnoreCase("name")) {
                        return o1.name.compareTo(o2.name)
                    }
                    if (sort.equalsIgnoreCase("price")) {
                        return o1.price.compareTo(o2.price)
                    }
                    if (sort.equalsIgnoreCase("quantity")) {
                        return o1.quantity.compareTo(o2.quantity)
                    }
                    if (sort.equalsIgnoreCase("weight")) {
                        return o1.weight.compareTo(o2.weight)
                    }
                } else {
                    if (sort.equalsIgnoreCase("name")) {
                        return o2.name.compareTo(o1.name)
                    }
                    if (sort.equalsIgnoreCase("price")) {
                        return o2.price.compareTo(o1.price)
                    }
                    if (sort.equalsIgnoreCase("quantity")) {
                        return o2.quantity.compareTo(o1.quantity)
                    }
                    if (sort.equalsIgnoreCase("weight")) {
                        return o2.weight.compareTo(o1.weight)
                    }
                }
            }
        })
        List<Product> productList = new ArrayList<Product>()
        if (allProductList.size() < offset + max) {
            if (allProductList.size() != 0) {
                productList.addAll(allProductList.subList(offset, allProductList.size()))
            }
        } else {
            productList.addAll(allProductList.subList(offset, offset + max))
        }
        [data: data, productList: productList, productCount: productCount, id: categoryInstanceId]
    }

    static def recurGenerateCategoryTree(Category category, Set<Category> requiredCategories) {
        requiredCategories.add(category)
        def childCategories = category.childCategories.toList()
        requiredCategories.addAll(childCategories)
        for (Category childCategory: childCategories) {
            recurGenerateCategoryTree(childCategory, requiredCategories)
        }
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


    def getProducts() {
        def categoryInstanceId = params.id
        def max = Math.min(params.max ? params.int('max') : 10, 100)
        def offset = params.offset ? params.int('offset') : 0
        def sort = params.sort ?: "name"
        def order = params.order ?: "asc"
        def productList = Product.findAll("from Product as p where p.category=:category order by p." + sort + " " + order,
                [category: Category.get(categoryInstanceId)], [max: max, offset: offset])
        List<Map<String, Object>> productImageMapList = new ArrayList<Map<String, Object>>()
        productList.each {
            def productImageMap = [:]
            productImageMap.put('product', it)
            productImageMap.put('imageUrl', AdminUtil.productDefaultImageUrl(it))
            productImageMapList.add(productImageMap)
        }
        render productImageMapList as JSON
    }

    public def generateCategoryTreeXml(def categoryId, Long selectedCategoryId) {
        StringWriter writer = new StringWriter()
        MarkupBuilder categoryTreeXml = new MarkupBuilder(writer)
        Category rootCategory = Category.get(categoryId)
        recurGenerateCategoryTreeXml(rootCategory, categoryTreeXml, selectedCategoryId)
        return writer.toString()
    }

    public def recurGenerateCategoryTreeXml(Category category, MarkupBuilder categoryTreeXml, Long selectedCategoryId) {
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

    def create() {
        def categoryInstance = new Category(params)
        categoryInstance.parentCategory = Category.get(params.id)
        [categoryInstance: categoryInstance]
    }

    def save() {
        def categoryInstance = new Category(params)
        categoryInstance.dateAdded = new Date()
        categoryInstance.lastModified = new Date()
        categoryInstance.categoryImage = CategoryImage.get(params.imageId)

        if (!categoryInstance.save(flush: true)) {
            render(view: "create", model: [categoryInstance: categoryInstance])
            return
        }

        if (!categoryInstance.save(flush: true)) {
            render(view: "create", model: [categoryInstance: categoryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "show", id: categoryInstance.id)
    }

    def uploadImage = {
        def uploadedFile = request.getFile('image')
        def categoryImage = uploadImage(uploadedFile)
        def result = ['id': categoryImage.id, 'image': categoryImage.image]
        render result as JSON
    }

    private uploadImage(def uploadedFile) {
        if (!uploadedFile.empty) {
            def categoryImage = new CategoryImage()
            String originalFilename = uploadedFile.originalFilename
            categoryImage.image = originalFilename
            categoryImage.dateAdded = new Date()
            categoryImage.save(flush: true, failOnError: true)
            String baseCategoryUploadDir = AdminUtil.baseCategoryUploadDir()
            File categoryImageUploadDir = new File(baseCategoryUploadDir, categoryImage.id.toString())
            categoryImageUploadDir.mkdirs()
            uploadedFile.transferTo(new File(categoryImageUploadDir, originalFilename))
            return categoryImage
        }
        return null
    }

    def show() {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
            return
        }
        [categoryInstance: categoryInstance]
    }

    def update() {
        def categoryInstance = Category.get(params.id)
        categoryInstance.categoryImage = CategoryImage.get(params.imageId)
        categoryInstance.lastModified = new Date()
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
                render(view: "edit", model: [categoryInstance: categoryInstance])
                return
            }
        }
        if (params.name != null && params.name != "") {
            categoryInstance.name = params.name
        }

        if (params.sortOrder != null) {
            try {
                categoryInstance.sortOrder = Integer.parseInt(params.sortOrder)
            } catch (NumberFormatException nfe) {
                categoryInstance.sortOrder = 0
            }
        }
        if (params.metaTitle != null) {
            categoryInstance.metaTitle = params.metaTitle
        }
        if (params.metaKeywords != null) {
            categoryInstance.metaKeywords = params.metaKeywords
        }
        if (params.metaDescription != null) {
            categoryInstance.metaDescription = params.metaDescription
        }
        if (params.description != null) {
            categoryInstance.description = params.description
        }
        if (params.image != null && params.image != "") {
            //handle uploaded file
            def uploadedFile = request.getFile('image')
            if (!uploadedFile.empty) {
                String baseCategoryUploadDir = AdminUtil.baseCategoryUploadDir()
                File categoryUploadDir = new File(baseCategoryUploadDir, categoryInstance.id.toString())
                String originalFilename = uploadedFile.originalFilename
                categoryUploadDir.mkdirs()
                uploadedFile.transferTo(new File(categoryUploadDir, originalFilename))
                categoryInstance.image = originalFilename
            }
        }

        if (!categoryInstance.save(flush: true, failOnError: true)) {
            render(view: "edit", model: [categoryInstance: categoryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'category.label', default: 'Category'), categoryInstance.id])
        redirect(action: "show", id: categoryInstance.id)
    }

    def delete() {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
            return
        }

        try {
            categoryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'category.label', default: 'Category'), params.id])
            redirect(action: "show", id: params.id)
        }
    }


}