package com.officegain.enigma.base

class UrlAlias {

	String query
	String keyword

	static mapping = {
		id column: "url_alias_id"
		version false
	}
}
