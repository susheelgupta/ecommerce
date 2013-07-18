package com.officegain.enigma.base

import org.springframework.dao.DataIntegrityViolationException

class DownloadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        def downloadList = Download.list();
        def downloadDescriptionMap = new HashMap<Download, DownloadDescription>()
        for (Download download: downloadList) {
            DownloadDescription downloadDescription = DownloadDescription.findByDownloadId(download.id)
            downloadDescriptionMap.put(download, downloadDescription)
        }
        [downloadDescriptionMap: downloadDescriptionMap]
    }

    def create() {
        [downloadInstance: new Download(params)]
    }

    def save() {
        def downloadInstance = new Download(params)
        downloadInstance.dateAdded = new Date()
        if (!downloadInstance.save(flush: true)) {
            render(view: "create", model: [downloadInstance: downloadInstance])
            return
        }
        def DownloadDescription downloadDescriptionInstance = new DownloadDescription(params)
        downloadDescriptionInstance.downloadId = downloadInstance.id
        downloadDescriptionInstance.languageId = 1
        if (!downloadDescriptionInstance.save(flush: true)) {
            render(view: "create", model: [downloadInstance: downloadInstance])
            return
        }
        flash.message = message(code: 'default.created.message', args: [message(code: 'download.label', default: 'Download'), downloadInstance.id])
        redirect(action: "list")
    }

    def show() {
        def downloadInstance = Download.get(params.id)
        if (!downloadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'download.label', default: 'Download'), params.id])
            return
        }

        def downloadDescriptionInstance = DownloadDescription.findByDownloadId(params.id)
        if (!downloadDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'download.label', default: 'Download'), params.id])
            return
        }
        [downloadInstance: downloadInstance, downloadDescriptionInstance: downloadDescriptionInstance]
    }

    def update() {
        def downloadInstance = Download.get(params.id)
        if (!downloadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'download.label', default: 'Download'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (downloadInstance.version > version) {
                downloadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'download.label', default: 'Download')] as Object[],
                        "Another user has updated this Download while you were editing")
                render(view: "create", model: [downloadInstance: downloadInstance])
                return
            }
        }

        downloadInstance.properties = params

        if (!downloadInstance.save(flush: true, failOnError: true)) {
            render(view: "create", model: [downloadInstance: downloadInstance])
            return
        }

        def downloadDescriptionInstance = DownloadDescription.findByDownloadId(params.id)
        if (!downloadDescriptionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'download.label', default: 'Download'), params.id])
            return
        }
        downloadDescriptionInstance.properties = params
        if (!downloadDescriptionInstance.save(flush: true)) {
            render(view: "show", model: [downloadInstance: downloadInstance, downloadDescriptionInstance: downloadDescriptionInstance])
            return
        }
        flash.message = message(code: 'default.updated.message', args: [message(code: 'download.label', default: 'Download'), downloadInstance.id])
        redirect(action: "list")
    }

    def delete() {
        if (params.downloadIds != '') {
            String[] downloadIds = params.downloadIds.split(",")
            downloadIds.each {it ->
                Download.get(Long.parseLong(it)).delete()
            }
        }
        redirect(action: "list")
    }
}
