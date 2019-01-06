package com.erezbiox1

import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 30/12/2018.
 * (C) 2018 Erez Rotem All Rights Reserved.
 */
abstract class AbstractServlet(val name: String, val menu: String) : HttpServlet() {
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        setAttributes(request)
        forward(request, response, name)
    }

    override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        doGet(request, response)
    }

    fun setAttributes(request: HttpServletRequest){
        request.setAttribute("menu", menu)
    }

    fun forward(request: HttpServletRequest, response: HttpServletResponse, file: String){
        request.getRequestDispatcher("/WEB-INF/jsp/$file.jsp").forward(request, response)
    }
}