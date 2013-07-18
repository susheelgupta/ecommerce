package com.officegain.enigma.admin

import grails.converters.JSON
import org.springframework.dao.DataIntegrityViolationException
import com.officegain.enigma.base.*
import groovy.xml.MarkupBuilder

class ProductController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [productInstanceList: Product.list(params), productInstanceTotal: Product.count()]
    }

    def create() {
        def productInstance = new Product(params)
        if (!params.categoryId.toString().equals('')) {
            productInstance.category = Category.get(params.categoryId)
        }
        if (!params.manufacturerId.toString().equals('')) {
            productInstance.manufacturer = Manufacturer.get(params.manufacturerId)
        }
        [productInstance: productInstance, productImageInstance: new ProductImage()]
    }

    public def updateCustomerPricing(def params, def productInstance) {
        def newCustomer = params.get("customer.id")
        if (newCustomer instanceof String) {
            def temp = new String[1]
            temp[0] = newCustomer
            newCustomer = temp
        }

        def productCost = params.get("customerPrice")
        if (productCost instanceof String) {
            def tempvar = new String[1];
            tempvar[0] = productCost
            productCost = tempvar
        }

        def cpid = params.get("cpid")
        if (cpid instanceof String) {
            def tempvariavle = new String[1];
            tempvariavle[0] = cpid
            cpid = tempvariavle
        }

        def oldCustomerPricingList = CustomerProductPrice.findAllByProduct(productInstance);
        for (int k = 0; k < oldCustomerPricingList.size(); k++) {
            def oldId = oldCustomerPricingList.get(k).getId().toString()
            def oldCustomerPricing = oldCustomerPricingList.get(k);
            def delete = true;
            for (int j = 0; j < cpid.length; j++) {
                if (cpid[j].equals(oldId)) {
                    delete = false;

                    oldCustomerPricing.price = new BigDecimal(productCost[j]);
                    def customer = Customer.get(Long.parseLong(newCustomer[j].toString()))
                    oldCustomerPricing.customer = customer;
                    oldCustomerPricing.save();
                }
            }
            if (delete) {
                oldCustomerPricing.delete();
            }
        }

        for (int i = 0; i < newCustomer.length; i++) {
            if (cpid[i] == "na" || cpid[i] == "") {
                def customerPricing = new CustomerProductPrice()
                def customer = Customer.get(Long.parseLong(newCustomer[i].toString()))
                customerPricing.customer = customer;
                customerPricing.product = productInstance;
                customerPricing.price = new BigDecimal(productCost[i]);
                customerPricing.save();
            }
        }
    }

    def save() {
        def productInstance = new Product(params)
        productInstance.dateAdded = new Date()
        productInstance.lastModified = new Date()
        productInstance.productImages = new HashSet<ProductImage>()
        Set<Long> imageIdsArray = new HashSet<Long>()
        if (!params.imageIdsArray.equals('')) {
            (params.imageIdsArray.substring(0, (params.imageIdsArray).length())).split(",").each {it ->
                imageIdsArray.add(Long.parseLong(it))
            }
        }
        Set<Long> intersectionIds = new HashSet<Long>(imageIdsArray)
        intersectionIds.each {it ->
            def productImageInstance = ProductImage.get(it)
            productInstance.productImages.add(productImageInstance)
        }

        if (!productInstance.save(flush: true, failOnError: true)) {
            render(view: "create", model: [productInstance: productInstance])
            return
        }
        updateCustomerPricing(params, productInstance)
        flash.message = message(code: 'default.created.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
        redirect(action: "show", id: productInstance.id)
    }

    def uploadImage = {
        def uploadedFile = request.getFile('image')
        def isDefault = params.isDefault
        def productImageInstance = uploadImage(uploadedFile, isDefault)
        def result = ['id': productImageInstance.id, 'image': productImageInstance.image]
        render result as JSON
    }

    def updateImage() {
        if (params.oldImageId == "") {
            def imageIdNew = ProductImage.get(params.newImageId)
            imageIdNew.isDefault = true
            imageIdNew.save()
        } else {
            def imageIdOld = ProductImage.get(params.oldImageId)
            def imageIdNew = ProductImage.get(params.newImageId)
            imageIdNew.isDefault = true
            imageIdOld.isDefault = false
            imageIdOld.save()
            imageIdNew.save()
        }
    }

    private uploadImage(def uploadedFile, def isDefault) {
        if (!uploadedFile.empty) {
            def productImageInstance = new ProductImage()
            productImageInstance.dateAdded = new Date()
            productImageInstance.isDefault = (isDefault != null)
            productImageInstance.sortOrder = 0
            String originalFilename = uploadedFile.originalFilename
            productImageInstance.image = originalFilename
            productImageInstance.save(flush: true, failOnError: true)
            String baseProductImageUploadDir = AdminUtil.baseProductUploadDir()
            File productImageUploadDir = new File(baseProductImageUploadDir, productImageInstance.id.toString())
            productImageUploadDir.mkdirs()
            uploadedFile.transferTo(new File(productImageUploadDir, originalFilename))
            return productImageInstance
        }
        return null
    }

    def show() {
        def productInstance = Product.get(params.id)
        def customerPricings = CustomerProductPrice.findAllByProduct(productInstance)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
            return
        }
        [productInstance: productInstance, customerPricings: customerPricings]
    }

    def update() {
        def productInstance = Product.get(params.id)
        productInstance.lastModified = new Date()
        Set<Long> imageIdsArray = new HashSet<Long>()
        Set<Long> imageRemoveArray = new HashSet<Long>()
        if (!params.imageIdsArray.equals('')) {
            (params.imageIdsArray.substring(0, (params.imageIdsArray).length())).split(",").each {it ->
                imageIdsArray.add(Long.parseLong(it))
            }
        }
        if (!params.imageRemoveArray.equals('')) {
            (params.imageRemoveArray.substring(0, (params.imageRemoveArray).length())).split(",").each {it ->
                imageRemoveArray.add(Long.parseLong(it))
            }
        }

        productInstance.productImages.clear();
        imageIdsArray.each {it ->
            def productImageInstance = ProductImage.get(it)
            productInstance.productImages.addAll(productImageInstance)
        }

        imageRemoveArray.each {it ->
            ProductImage.get(it).delete();
        }
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
            return
        }
        if (params.version) {
            def version = params.version.toLong()
            if (productInstance.version > version) {
                productInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'product.label', default: 'Product')] as Object[],
                        "Another user has updated this Product while you were editing")
                render(view: "show", model: [productInstance: productInstance])
                return
            }
        }
        productInstance.properties = params
        if (!productInstance.save(flush: true, failOnError: true)) {
            render(view: "show", model: [productInstance: productInstance])
            return
        }
        updateCustomerPricing(params, productInstance)
        flash.message = message(code: 'default.updated.message', args: [message(code: 'product.label', default: 'Product'), productInstance.id])
        redirect(action: "show", id: productInstance.id)
    }

    def delete() {
        def productInstance = Product.get(params.id)
        if (!productInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
            return
        }
        try {
            productInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'product.label', default: 'Product'), params.id])
            redirect(action: "show", id: params.id)
        }
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
}
