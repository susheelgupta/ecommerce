package com.officegain.enigma.base

class Newsletter {

	String title
	String content
	String module
	Date dateAdded
	Date dateSent
	Integer status
	Integer locked

	static hasMany = [newsletterLogs: NewsletterLog]

	static mapping = {
	}

	static constraints = {
		content maxSize: 65535
		dateAdded maxSize: 19
		dateSent nullable: true, maxSize: 19
		status nullable: true
		locked nullable: true
	}
}
