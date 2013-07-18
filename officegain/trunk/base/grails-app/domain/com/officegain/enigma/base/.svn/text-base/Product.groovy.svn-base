package com.officegain.enigma.base
class Product {
    def springSecurityService
    String name
    String internalName
    Integer quantity
    BigDecimal price
    BigDecimal offerPrice
    Boolean hasChildren = false
    Boolean available = true
    Boolean stockStatus = true
    Boolean codOrder = true
    Boolean dropShipment = true
    String description
    String features
    String overview
    String specifications
    String keywords
    String tags
    String url
    Integer viewed = 0
    String model
    Date dateAdded
    Date lastModified
    BigDecimal weight
    Integer ordered = 0
    String warranty
    String deliveryTime
    String metaTitle
    String metaDescription
    String metaKeywords

    Product parentProduct
    Manufacturer manufacturer
    Category category
    ProductType productType
    WeightClass weightClass
    TaxClass taxClass

    static searchable = true

    static hasMany = [productAttributes: ProductAttribute, productImages: ProductImage, productNotifications: ProductNotification,
            productVariants: ProductVariant, childProducts: Product, reviews: Review, specials: Special]

    static belongsTo = [Manufacturer, Category, ProductType, WeightClass, TaxClass]

    static mapping = {
    }

    BigDecimal getCustomerPricing() {
        if (springSecurityService != null) {
            if (springSecurityService.principal != null && !(springSecurityService.principal instanceof String)) {
                def customer = Customer.get(springSecurityService.principal.id)
                def customerPricing = CustomerProductPrice.findAllByProductAndCustomer(this, customer)
                if (customerPricing == null || customerPricing.size() == 0) {
                    return price
                }
                return customerPricing.get(0).price
            }
        }
        return price
    }

    static constraints = {
        name blank: false, nullable: false
        internalName blank: false, nullable: false
        quantity nullable: false
        price nullable: false
        description nullable: true
        features nullable: true
        overview nullable: true
        specifications nullable: true
        keywords nullable: true
        tags nullable: true
        url nullable: true
        model nullable: true
        weight nullable: true
        warranty nullable: true
        deliveryTime nullable: true
        metaTitle nullable: true
        metaDescription nullable: true
        metaKeywords nullable: true
        parentProduct nullable: true
        productType nullable: true
        weightClass nullable: true
        taxClass nullable: true
    }

}
