package com.erezbiox1.servlets

import com.erezbiox1.AbstractServlet
import com.erezbiox1.PhotoManager
import com.erezbiox1.SessionManager
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 29/12/2018.
 * (C) 2018 Erez Rotem All Rights Reserved.
 */
class IndexServlet : AbstractServlet("index", "home") {
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        val user = request.getUser()

        val privileged = user?.isAuthorized(5) ?: false
        val photos = PhotoManager.getPhotoArray(null, privileged)

        if(photos == null){
            response.sendError(404, "Please contact the sites administrator.")
            return
        }

        request.setAttribute("photos", photos)

        super.doGet(request, response)
    }
}