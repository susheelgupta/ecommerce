package com.officegain.enigma.base

class WeightClass {

    String weightClassKey
    String weightClassTitle

    static hasMany = [products: Product, weightClassRulesForWeightClassFromId: WeightClassRule, weightClassRulesForWeightClassToId: WeightClassRule]

    // TODO you have multiple hasMany references for class(es) [WeightClassRule]
    //      so you'll need to disambiguate them with the 'mappedBy' property:
    static mappedBy = [weightClassRulesForWeightClassFromId: "weightClassByWeightClassFromId", weightClassRulesForWeightClassToId: "weightClassByWeightClassToId"]

    static mapping = {
    }

    static constraints = {
        weightClassKey maxSize: 4
    }
}
