package com.officegain.enigma.admin

import com.officegain.enigma.base.Product

/**
 * Created by IntelliJ IDEA.
 * User: Ahsan.Javed
 * Date: 1/10/12
 * Time: 1:10 PM
 */
class AdminUtil {

    static String baseUploadUrl() {
        def config = org.codehaus.groovy.grails.commons.ConfigurationHolder.config
        return config.admin.baseUploadUrl
    }

    static String baseUploadDir() {
        def config = org.codehaus.groovy.grails.commons.ConfigurationHolder.config
        return config.admin.baseUploadDir
    }

    static String baseCategoryUploadDir() {
        return baseUploadDir() + "/" + "category"
    }

    static String baseManufacturerUploadDir() {
        return baseUploadDir() + "/" + "manufacturer"
    }

    static String baseProductUploadDir() {
        return baseUploadDir() + "/" + "product"
    }

    static String categoryImageUrl(def categoryInstance) {
        return baseUploadUrl() + "/" + "category" + "/" + categoryInstance.categoryImage?.id?.toString() + "/" + categoryInstance.categoryImage?.image
    }

    static String manufacturerImageUrl(def manufacturerInstance) {
        return baseUploadUrl() + "/" + "manufacturer" + "/" + manufacturerInstance.manufacturerImage?.id?.toString() + "/" + manufacturerInstance.manufacturerImage?.image
    }

    static String productImageUrl(def productImageInstance) {
        return baseUploadUrl() + "/" + "product" + "/" + productImageInstance?.id?.toString() + "/" + productImageInstance?.image
    }

    static String productDefaultImageUrl(def productInstance) {
        def imageUrl = ''
        def productInstanceA = Product.get(productInstance.id)
        productInstanceA.productImages.each {it ->
            if (it.isDefault) {
                imageUrl = baseUploadUrl() + "/" + "product" + "/" + it.id.toString() + "/" + it.image
            }
        }
        return imageUrl
    }
}
