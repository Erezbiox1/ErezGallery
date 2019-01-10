package com.erezbiox1.servlets

import com.erezbiox1.AbstractServlet
import com.erezbiox1.utils.sql
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse
/**
 * Created by Erezbiox1 on 29/12/2018.
 * (C) 2018 Erez Rotem All Rights Reserved.
 */

/**
 * There are 2 ways of getting an ip so I can compare them to see if someone was screwing with the js ip.
 */
class ContactServlet : AbstractServlet("contact", "contact") {
    override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        val username: String? = request.getParameter("username")
        val email: String? = request.getParameter("email")
        val phone: String? = request.getParameter("phone")
        val message: String? = request.getParameter("message")
        val jsIP: String? = request.getParameter("ip")

        val serverIP = getIP(request)

        if(username != null && email != null && phone != null && message != null && jsIP != null){
            sql("INSERT INTO tickets (name, email, phone, message, jsIP, serverIP) VALUES (?, ?, ?, ?, ?, ?)",
                    username, email, phone, message, jsIP, serverIP)
        }
        super.doPost(request, response)
    }
}