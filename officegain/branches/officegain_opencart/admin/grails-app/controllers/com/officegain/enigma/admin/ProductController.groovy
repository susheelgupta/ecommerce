package com.officegain.enigma.admin

import com.officegain.enigma.base.*

class ProductController {

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def productInstanceList = Product.list()
        def productDescriptionMap = new HashMap<Product, ProductDescription>()
        for (Product product: productInstanceList) {
            ProductDescription productDescription = ProductDescription.findByProductId(product.id)
            productDescriptionMap.put(product, productDescription)
        }
        [productDescriptionMap: productDescriptionMap]
    }

    def insert() {
        [productInstance: new Product(params)]
    }

    def save() {
        def Product productInstance = new Product(params)
        productInstance.dateAdded = new Date()
        productInstance.dateModified = new Date()
        productInstance.dateAvailable = new Date()
        if (!productInstance.save(flush: true)) {
            render(view: "insert", model: [productInstance: productInstance])
            return
        }
        def ProductDescription productDescriptionInstance = new ProductDescription(params)
        productDescriptionInstance.productId = productInstance.id
        productDescriptionInstance.languageId = 1
        if (!productDescriptionInstance.save(flush: true)) {
            render(view: "insert", model: [productInstance: productInstance])
            return
        }
        def ProductDiscount productDiscountInstance = new ProductDiscount(params)
        productDiscountInstance.productId = productInstance.id
        productDiscountInstance.customerGroupId = 1
        if (!productDiscountInstance.save(flush: true)) {
            render(view: "insert", model: [productInstance: productInstance])
            return
        }
        def ProductSpecial productSpecialInstance = new ProductSpecial(params)
        productSpecialInstance.productId = productInstance.id
        productSpecialInstance.customerGroupId = 1
        if (!productSpecialInstance.save(flush: true)) {
            render(view: "insert", model: [productInstance: productInstance])
            return
        }
        ProductReward productRewardInstance = new ProductReward(params)
        productRewardInstance.productId = productInstance.id
        productRewardInstance.customerGroupId = 1
        if (!productRewardInstance.save(flush: true)) {
            render(view: "insert", model: [productInstance: productInstance])
        }
        redirect(action: "list", id: productInstance.id)
    }

    def show() {
        if (params.productIds != '') {
            String[] productIds = params.productIds.split(",")
            productIds.each {it ->
                def Product product = Product.get(it)
                def Product productInstance = new Product()
                productInstance.dateAdded = new Date()
                productInstance.dateModified = new Date()
                productInstance.dateAvailable = new Date()
                productInstance.model = product.model
                productInstance.price = product.price
                productInstance.quantity = product.quantity
                if (!productInstance.save(flush: true)) {
                    render(view: "list", model: [productInstance: productInstance])
                    return
                }
                def ProductDescription productDescriptionInstance = new ProductDescription()
                productDescriptionInstance.name = ProductDescription.findByProductId(product.id).name
                productDescriptionInstance.productId = productInstance.id
                productDescriptionInstance.languageId = 1
                if (!productDescriptionInstance.save(flush: true)) {
                    render(view: "list", model: [productInstance: productInstance])
                    return
                }
            }
        }
        redirect(action: "list")
    }

    def delete() {
        if (params.productIds != '') {
            String[] productIds = params.productIds.split(",")
            productIds.each {it ->
                Product.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list",)
    }
}
