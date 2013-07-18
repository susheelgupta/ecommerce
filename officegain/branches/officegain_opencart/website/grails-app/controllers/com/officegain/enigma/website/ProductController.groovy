package com.officegain.enigma.website

import com.officegain.enigma.base.*

class ProductController {

    def index() {
        redirect(action: 'list')
    }

    def list() {
        def productInstance = Product.findById(params.id)
        ProductDescription productDescription = ProductDescription.findByProductId(params.id)
        List<ProductRelated> productRelatedList = ProductRelated.findAllByProductId(params.id)
        def productDetail = new ProductDetail()
        productDetail.id = productInstance.id
        productDetail.name = productDescription.name
        productDetail.price = productInstance.price
        productDetail.productCode = productInstance.model
        productDetail.availability = productInstance.status
        productDetail.description = productDescription.description
        productDetail.brand = "Canon"
        productDetail.model = productInstance.model
        productDetail.status = productInstance.status
        productDetail.relatedProducts = productRelatedList*.relatedId
        List<ProductAttribute> productAttributes = ProductAttribute.findAllByProductId(params.id)
        def productAttributeMap = new HashMap<AttributeGroup, List<ProductAttribute>>()
        for (ProductAttribute productAttribute: productAttributes) {
            AttributeGroup attributeGroup = AttributeGroup.get(Attribute.get(productAttribute.attributeId).attributeGroupId)
            List<ProductAttribute> productAttributeList = productAttributeMap.get(attributeGroup)
            if (productAttributeList == null) {
                productAttributeList = new ArrayList<ProductAttribute>()
            }
            productAttributeList.add(productAttribute)
            productAttributeMap.put(attributeGroup, productAttributeList)
        }
        [productDetail: productDetail, productAttributeMap: productAttributeMap, categorynameList: CategoryDescription.list()]
    }
    def writeReview(){
  def  Review reviewInstance =  new Review(params);
        reviewInstance.dateAdded = new Date();
        reviewInstance.dateModified = new Date();

    }
}
