package com.officegain.enigma.base

class TemplateBoxToPage {

	String contentPage
	String boxesGroup
	Integer sortOrder
	Integer pageSpecific
	Template template
	TemplateBox templateBox

	static belongsTo = [Template, TemplateBox]

	static mapping = {
	}

	static constraints = {
		boxesGroup maxSize: 32
		sortOrder nullable: true
		pageSpecific nullable: true
	}
}
