package com.erezbiox1.servlets

import com.erezbiox1.AbstractServlet
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 29/12/2018.
 * (C) 2018 Erez Rotem All Rights Reserved.
 */
class ContactServlet : AbstractServlet("contact", "contact") {
    override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        val username: String? = request.getParameter("username")
        val email: String? = request.getParameter("email")
        val phone: String? = request.getParameter("phone")
        val message: String? = request.getParameter("message")

        if(username != null && email != null && phone != null && message != null){
            println("username = $username")
            println("email = $email")
            println("phone = $phone")
            println("message = $message")
        }
        super.doPost(request, response)
    }
}