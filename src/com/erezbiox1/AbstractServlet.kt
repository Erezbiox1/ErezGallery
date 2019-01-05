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
        request.setAttribute("menu", menu)
        request.getRequestDispatcher("/WEB-INF/jsp/$name.jsp").forward(request, response)
    }

    override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        doGet(request, response)
    }
}