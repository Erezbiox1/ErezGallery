package com.erezbiox1.servlets

import com.erezbiox1.AbstractServlet
import com.erezbiox1.PhotoManager
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 29/12/2018.
 * (C) 2018 Erez Rotem All Rights Reserved.
 */
class TripServlet : AbstractServlet("trip", "trips") {
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        val argument = request.requestURI.split("/").last()
        val photos = PhotoManager.getPhotoArray(argument.toLowerCase(), false) // TODO PRIVILEGED

        request.setAttribute("photos", photos)
        request.setAttribute("context", "../")

        super.doGet(request, response)
    }
}