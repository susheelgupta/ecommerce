package com.officegain.enigma.admin

class CommonController {

    def index() {
        redirect(action: "home", params: params)
    }

    def home() {
    }
}
