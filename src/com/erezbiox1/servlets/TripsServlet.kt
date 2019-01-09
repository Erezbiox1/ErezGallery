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
        /*
        val first = arrayOf("London", "london", "19/12/2015", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.")

        val otherTrips = arrayOf(
                arrayOf("Cyprus", "cyprus", "19/12/2015", ""),
                arrayOf("Italy", "italy", "20/12/2015", "Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar."),
                arrayOf("Greek", "greek", "21/12/2015", "Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar."))
        */

        val trips = PhotoManager.getTripArray()

        println("===========")
        trips.forEach { println(it.toList()) }
        println("===========")

        if(trips.isEmpty()){
            response.sendError(500, "There is no trips stored in the database. Please contact system administrators.")
            return
        }

        request.setAttribute("firstTrip", trips[0])
        request.setAttribute("otherTrips", trips.toList().subList(1, trips.size).toTypedArray())

        super.doGet(request, response)
    }
}