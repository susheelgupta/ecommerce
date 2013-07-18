package com.officegain.enigma.website

import com.officegain.enigma.base.Customer
import com.officegain.enigma.base.CustomerProductPrice
import com.officegain.enigma.base.Product

/**
 * Created by IntelliJ IDEA.
 * User: prashant
 * Date: 1/27/12
 * Time: 3:47 PM
 * To change this template use File | Settings | File Templates.
 */
class WebsiteUtil {
    static String baseUploadUrl() {
        def config = org.codehaus.groovy.grails.commons.ConfigurationHolder.config
        return config.website.baseUploadUrl
    }

    static String baseUploadDir() {
        def config = org.codehaus.groovy.grails.commons.ConfigurationHolder.config
        return config.website.baseUploadDir
    }

    static String categoryImageUrl(def categoryInstance) {
        return baseUploadUrl() + "/" + "category" + "/" + categoryInstance.categoryImage?.id?.toString() + "/" + categoryInstance.categoryImage?.image
    }

    static String productImageUrl(def productImageInstance) {
        return baseUploadUrl() + "/" + "product" + "/" + productImageInstance.id.toString() + "/" + productImageInstance.image
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
