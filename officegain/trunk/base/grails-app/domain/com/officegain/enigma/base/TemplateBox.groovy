package com.officegain.enigma.base

class TemplateBox {

	String title
	String code
	String authorName
	String authorWww
	String modulesGroup

	static hasMany = [templateBoxToPages: TemplateBoxToPage]

	static mapping = {
	}

	static constraints = {
		authorWww nullable: true
	}
}
