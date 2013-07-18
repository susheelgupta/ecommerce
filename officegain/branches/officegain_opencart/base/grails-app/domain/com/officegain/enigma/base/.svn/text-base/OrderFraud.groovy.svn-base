package com.officegain.enigma.base

class OrderFraud {

    Long customerId
	String countryMatch
	String countryCode
	String highRiskCountry
	Integer distance
	String ipRegion
	String ipCity
	BigDecimal ipLatitude
	BigDecimal ipLongitude
	String ipIsp
	String ipOrg
	Integer ipAsnum
	String ipUserType
	String ipCountryConfidence
	String ipRegionConfidence
	String ipCityConfidence
	String ipPostalConfidence
	String ipPostalCode
	Integer ipAccuracyRadius
	String ipNetSpeedCell
	Integer ipMetroCode
	Integer ipAreaCode
	String ipTimeZone
	String ipRegionName
	String ipDomain
	String ipCountryName
	String ipContinentCode
	String ipCorporateProxy
	String anonymousProxy
	Integer proxyScore
	String isTransProxy
	String freeMail
	String carderEmail
	String highRiskUsername
	String highRiskPassword
	String binMatch
	String binCountry
	String binNameMatch
	String binName
	String binPhoneMatch
	String binPhone
	String customerPhoneInBillingLocation
	String shipForward
	String cityPostalMatch
	String shipCityPostalMatch
	BigDecimal score
	String explanation
	BigDecimal riskScore
	Integer queriesRemaining
	String maxmindId
	String error
	Date dateAdded

	static mapping = {
		id column: "order_id", generator: "assigned"
		version false
	}

	static constraints = {
		countryMatch maxSize: 3
		countryCode maxSize: 2
		highRiskCountry maxSize: 3
		ipLatitude scale: 6
		ipLongitude scale: 6
		ipCountryConfidence maxSize: 3
		ipRegionConfidence maxSize: 3
		ipCityConfidence maxSize: 3
		ipPostalConfidence maxSize: 3
		ipPostalCode maxSize: 10
		ipContinentCode maxSize: 2
		ipCorporateProxy maxSize: 3
		anonymousProxy maxSize: 3
		isTransProxy maxSize: 3
		freeMail maxSize: 3
		carderEmail maxSize: 3
		highRiskUsername maxSize: 3
		highRiskPassword maxSize: 3
		binMatch maxSize: 10
		binCountry maxSize: 2
		binNameMatch maxSize: 3
		binPhoneMatch maxSize: 3
		binPhone maxSize: 32
		customerPhoneInBillingLocation maxSize: 8
		shipForward maxSize: 3
		cityPostalMatch maxSize: 3
		shipCityPostalMatch maxSize: 3
		score scale: 5
		explanation maxSize: 65535
		riskScore scale: 5
		maxmindId maxSize: 8
		error maxSize: 65535
	}
}
