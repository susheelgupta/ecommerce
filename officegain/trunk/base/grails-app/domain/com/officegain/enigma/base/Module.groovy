package com.officegain.enigma.base

class Module {

	String title
	String code
	String authorName
	String authorWww
	String moduleGroup

	static mapping = {
		version false
	}

	static constraints = {
		authorWww nullable: true
	}
}
