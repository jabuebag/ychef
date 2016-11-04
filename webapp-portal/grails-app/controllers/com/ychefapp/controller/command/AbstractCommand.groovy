package com.ychefapp.controller.command

import grails.validation.Validateable

class AbstractCommand implements Validateable {

    public enum Method {
        View, Json;
    }

    Method method = Method.View

    Boolean isJson(){
        return method == Method.Json
    }
}
