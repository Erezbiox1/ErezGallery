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
        val photos = arrayOf(
                arrayOf("1", "london", "A dog"),
                arrayOf("2", "london", "A wolf"),
                arrayOf("3", "london", "Sunshine"),
                arrayOf("4", "london", "Me"),
                arrayOf("5", "london", "You"),
                arrayOf("6", "london", "A dog"),
                arrayOf("7", "london", "A wolf"),
                arrayOf("8", "london", "Sunshine"),
                arrayOf("9", "london", "Me"),
                arrayOf("10", "london", "You"),
                arrayOf("11", "london", "A dog"),
                arrayOf("12", "london", "A wolf"),
                arrayOf("13", "london", "Sunshine"),
                arrayOf("14", "london", "Me"),
                arrayOf("15", "london", "You"),
                arrayOf("16", "london", "A dog")
        )

        request.setAttribute("photos", photos)
        request.setAttribute("context", "../")
        println("trip: " + request.requestURI.split("/").last())
        super.doGet(request, response)
    }
}