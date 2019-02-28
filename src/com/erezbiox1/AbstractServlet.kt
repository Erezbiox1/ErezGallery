package com.erezbiox1

import com.erezbiox1.models.User
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

    fun getIP(request: HttpServletRequest) : String {
        var ip = request.getHeader("X-Forwarded-For")
        if (ip.isNullOrEmpty() || ip.equals("unknown", ignoreCase = false)) {
            ip = request.getHeader("Proxy-Client-IP")
        }
        if (ip.isNullOrEmpty() || ip.equals("unknown", ignoreCase = false)) {
            ip = request.getHeader("WL-Proxy-Client-IP")
        }
        if (ip.isNullOrEmpty() || ip.equals("unknown", ignoreCase = false)) {
            ip = request.getHeader("HTTP_CLIENT_IP")
        }
        if (ip.isNullOrEmpty() || ip.equals("unknown", ignoreCase = false)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR")
        }
        if (ip.isNullOrEmpty() || ip.equals("unknown", ignoreCase = false)) {
            ip = request.remoteAddr
        }
        return ip
    }

    fun HttpServletRequest.getUser() : User? {
        return SessionManager.getSession(this)?.user
    }
}