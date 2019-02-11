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
class TripsServlet : AbstractServlet("trips", "trips") {
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        val trips = PhotoManager.getTripArray()

        if(trips.isEmpty()){
            response.sendError(500, "There is no trips stored in the database. Please contact system administrators.")
            return
        }

        request.setAttribute("firstTrip", trips[0])
        request.setAttribute("otherTrips", trips.toList().subList(1, trips.size).toTypedArray())

        super.doGet(request, response)
    }
}