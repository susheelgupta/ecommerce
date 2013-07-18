package com.officegain.enigma.admin

import com.officegain.enigma.base.Manufacturer
import com.officegain.enigma.base.ManufacturerImage
import com.officegain.enigma.base.Product
import grails.converters.JSON
import groovy.xml.MarkupBuilder
import org.springframework.dao.DataIntegrityViolationException

class ManufacturerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def max = Math.min(params.max ? params.int('max') : 10, 100)
        def offset = params.offset ? params.int('offset') : 0
        def sort = params.sort ?: "name"
        def order = params.order ?: "asc"
        def data = generateManufacturerXml()
        def manufacturerId = params.id ?: "0"
        if (manufacturerId == "0") {
            return [data: data, productList: Product.list([max: max, offset: offset, sort: sort, order: order]), productCount: Product.count(), id: manufacturerId]
        } else {
            def manufacturerInstance = Manufacturer.get(manufacturerId)
            def allProductList = Product.findAllByManufacturer(manufacturerInstance, [max: max, offset: offset, sort: sort, order: order])
            def productCount = Product.countByManufacturer(manufacturerInstance)
            return [data: data, productList: allProductList, productCount: productCount, id: manufacturerId]
        }
    }

    public def generateManufacturerXml() {
        StringWriter writer = new StringWriter()
        MarkupBuilder manufacturerTreeXml = new MarkupBuilder(writer)
        generateManufacturerTreeXml(manufacturerTreeXml)
        return writer.toString()
    }

    public def generateManufacturerTreeXml(MarkupBuilder manufacturerTreeXml) {
        manufacturerTreeXml.manufacturer(name: 'All Manufacturers', id: 0, icon: 'icon-0') {
            def listOfManufacturers = Manufacturer.list()
            Collections.sort(listOfManufacturers, new Comparator<Manufacturer>() {
                int compare(Manufacturer o1, Manufacturer o2) {
                    return o1.name.compareTo(o2.name)
                }
            })
            listOfManufacturers.each {
                manufacturerTreeXml.manufacturer(name: it.name, id: it.id, icon: 'icon-' + it.id)
            }
        }
    }

    def create() {
        [manufacturerInstance: new Manufacturer(params)]
    }

    def save() {
        def manufacturerInstance = new Manufacturer(params)
        manufacturerInstance.dateAdded = new Date()
        manufacturerInstance.lastModified = new Date()
        manufacturerInstance.manufacturerImage = ManufacturerImage.get(params.imageId)
        if (!manufacturerInstance.save(flush: true)) {
            render(view: "create", model: [manufacturerInstance: manufacturerInstance])
            return
        }
        if (!manufacturerInstance.save(flush: true)) {
            render(view: "create", model: [manufacturerInstance: manufacturerInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), manufacturerInstance.id])
        redirect(action: "show", id: manufacturerInstance.id)
    }

    def uploadImage() {
        def uploadedFile = request.getFile('image')
        def manufacturerImage = uploadImage(uploadedFile)
        def result = ['id': manufacturerImage.id, 'image': manufacturerImage.image]
        render result as JSON
    }

    private uploadImage(def uploadedFile) {
        if (!uploadedFile.empty) {
            def manufacturerImage = new ManufacturerImage()
            String originalFilename = uploadedFile.originalFilename
            manufacturerImage.image = originalFilename
            manufacturerImage.dateAdded = new Date()
            manufacturerImage.save(flush: true, failOnError: true)
            String baseManufacturerUploadDir = AdminUtil.baseManufacturerUploadDir()
            File manufacturerImageUploadDir = new File(baseManufacturerUploadDir, manufacturerImage.id.toString())
            manufacturerImageUploadDir.mkdirs()
            uploadedFile.transferTo(new File(manufacturerImageUploadDir, originalFilename))
            return manufacturerImage
        }
        return null
    }

    def show() {
        if (params.id == "0") {
            flash.message = "You can not edit All Manufacturers."
            redirect(action: "list")
            return
        }
        def manufacturerInstance = Manufacturer.get(params.id)
        if (!manufacturerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), params.id])
            redirect(action: "list")
            return
        }

        [manufacturerInstance: manufacturerInstance, id: params.id]
    }

    def update() {
        def manufacturerInstance = Manufacturer.get(params.id)
        manufacturerInstance.manufacturerImage = ManufacturerImage.get(params.imageId)
        manufacturerInstance.lastModified = new Date()
        if (!manufacturerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (manufacturerInstance.version > version) {
                manufacturerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'manufacturer.label', default: 'Manufacturer')] as Object[],
                        "Another user has updated this Manufacturer while you were editing")
                render(view: "edit", model: [manufacturerInstance: manufacturerInstance])
                return
            }
        }

        if (params.name != null && params.name != "") {
            manufacturerInstance.name = params.name
        }
        if (params.url != null) {
            manufacturerInstance.url = params.url
        }
        if (params.description != null) {
            manufacturerInstance.description = params.description
        }
        if (params.image != null && params.image != "") {
            //handle uploaded file
            def uploadedFile = request.getFile('image')
            if (!uploadedFile.empty) {
                String baseManufacturerUploadDir = AdminUtil.baseManufacturerUploadDir()
                File manufacturerUploadDir = new File(baseManufacturerUploadDir, manufacturerInstance.id.toString())
                String originalFilename = uploadedFile.originalFilename
                manufacturerUploadDir.mkdirs()
                uploadedFile.transferTo(new File(manufacturerUploadDir, originalFilename))
                manufacturerInstance.image = originalFilename
            }
        }
        if (!manufacturerInstance.save(flush: true)) {
            render(view: "edit", model: [manufacturerInstance: manufacturerInstance])
            return
        }
        flash.message = message(code: 'default.updated.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), manufacturerInstance.id])
        redirect(action: "show", id: manufacturerInstance.id)
    }

    def delete() {
        def manufacturerInstance = Manufacturer.get(params.id)
        if (!manufacturerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), params.id])
            redirect(action: "list")
            return
        }

        try {
            manufacturerInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'manufacturer.label', default: 'Manufacturer'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}