package com.officegain.enigma.base

class Product {

	String model
	String sku
	String upc
	String ean
	String jan
	String isbn
	String mpn
	String location
	Integer quantity
	Integer stockStatusId
	String image
    Long manufacturerId
	Boolean shipping
	BigDecimal price
	Integer points
	Integer taxClassId
	Date dateAvailable
	BigDecimal weight
	Integer weightClassId
	BigDecimal length
	BigDecimal width
	BigDecimal height
	Integer lengthClassId
	Boolean subtract
	Integer minimum
	Integer sortOrder
	Boolean status
	Date dateAdded
	Date dateModified
	Integer viewed

	static mapping = {
		id column: "product_id"
		version false
	}

	static constraints = {
		model maxSize: 64
		sku maxSize: 64,nullable: true
		upc maxSize: 12,nullable: true
		ean maxSize: 14,nullable: true
		jan maxSize: 13,nullable: true
		isbn maxSize: 13,nullable: true
		mpn maxSize: 64 ,nullable: true
		location maxSize: 128,nullable: true
		image nullable: true
		price scale: 4,nullable: true
		weight scale: 8,nullable: true
		length scale: 8,nullable: true
		width scale: 8 ,nullable: true
		height scale: 8,nullable: true
        dateAvailable nullable: true
        lengthClassId nullable: true
        manufacturerId nullable: true
        taxClassId nullable: true
        weightClassId nullable: true
        stockStatusId nullable: true
        points nullable: true
        subtract nullable: true
        shipping nullable: true
        quantity nullable: true
        sortOrder nullable: true
        viewed nullable: true
        status nullable: true
        minimum nullable: true
	}
}
