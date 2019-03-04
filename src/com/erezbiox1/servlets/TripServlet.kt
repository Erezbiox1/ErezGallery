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
        val user = request.getUser()

        val privileged = user?.let { it.getRole() != "guest" } ?: false
        val photos = PhotoManager.getPhotoArray(argument.toLowerCase(), privileged)

        if(photos == null){
            response.sendError(404, "Sorry! No such trip. if you believe this is an error, please contact the site administrator.")
            return
        }

        request.setAttribute("photos", photos)
        request.setAttribute("context", "../")

        super.doGet(request, response)
    }
}