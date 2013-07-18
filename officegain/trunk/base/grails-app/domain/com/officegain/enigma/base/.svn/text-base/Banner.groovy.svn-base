package com.officegain.enigma.base

class Banner {

    String title
    String url
    String image
    String group
    String htmlText
    Integer expiresImpressions
    Date expiresDate
    Date dateScheduled
    Date dateAdded
    Date dateStatusChange
    Integer status

    static hasMany = [bannerHistories: BannerHistory]

    static mapping = {
        group column: 'banner_group'
    }

    static constraints = {
        htmlText nullable: true, maxSize: 65535
        expiresImpressions nullable: true
        expiresDate nullable: true, maxSize: 19
        dateScheduled nullable: true, maxSize: 19
        dateAdded maxSize: 19
        dateStatusChange nullable: true, maxSize: 19
    }
}
