package com.officegain.enigma.base

class OrderProductDownload {

    Integer orderProductId
    String orderProductFilename
    Integer downloadMaxdays
    Integer downloadCount
    Order order

    static belongsTo = [Order]

    static mapping = {
    }
}
