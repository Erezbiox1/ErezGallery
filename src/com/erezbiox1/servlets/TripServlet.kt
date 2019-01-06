package com.erezbiox1.servlets

import com.erezbiox1.AbstractServlet
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 29/12/2018.
 * (C) 2018 Erez Rotem All Rights Reserved.
 */
class TripServlet : AbstractServlet("trip", "trips") {
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        request.setAttribute("context", "../")
        println("trip: " + request.requestURI.split("/").last())
        super.doGet(request, response)
    }
}