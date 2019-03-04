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
class PhotoServlet : AbstractServlet("photo", "trips") {
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        val user = request.getUser()
        request.setAttribute("context", "../")

        val arg = request.requestURI.split("/").last().toIntOrNull()
        val privileged = user?.let { it.getRole() != "guest" } ?: false

        val photo = if(arg == null) null else PhotoManager.getPhoto(arg)
        val trip = photo?.let { PhotoManager.getTrip(photo.trip) }
        if(photo == null || trip == null){
            response.sendError(404, "Sorry! No such photo. if you believe this is an error, please contact the site administrator.")
            return
        }

        if(photo.hidden && !privileged){
            response.sendError(403, "Sorry! You don't have permission to view this photo.")
            return
        }
        //String id, name, trip, tripFile, desc;
        request.setAttribute("id", photo.id.toString())
        request.setAttribute("name", photo.name)
        request.setAttribute("trip", trip.name)
        request.setAttribute("tripFile", trip.file)
        request.setAttribute("desc", photo.desc)

        super.doGet(request, response)
    }
}