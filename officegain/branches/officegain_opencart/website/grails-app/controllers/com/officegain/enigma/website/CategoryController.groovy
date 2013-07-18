package com.officegain.enigma.website

import com.officegain.enigma.base.CategoryDescription
import com.officegain.enigma.base.Product
import com.officegain.enigma.base.ProductDescription
import com.officegain.enigma.base.ProductToCategory

class CategoryController {

    def index() {
        redirect(action: 'list')
    }

    def list() {
        def categoryId = params.id
        CategoryDescription categoryDescription = CategoryDescription.findByCategoryId(categoryId)
        def productToCategoryInstanceList = ProductToCategory.findAllByCategoryId(categoryId)
        def productDescriptionMap = new HashMap<Product, ProductDescription>()
        for (ProductToCategory productToCategory: productToCategoryInstanceList) {
            Product product = Product.get(productToCategory.productId)
            ProductDescription productDescription = ProductDescription.findByProductId(product.id)
            productDescriptionMap.put(product, productDescription)
        }
          CategoryDetails categoryDetails  = new CategoryDetails()
        categoryDetails.name  = categoryDescription.name
        [productDescriptionMap: productDescriptionMap, categorynameList: CategoryDescription.list(),categoryDetails:categoryDetails]

    }
}
