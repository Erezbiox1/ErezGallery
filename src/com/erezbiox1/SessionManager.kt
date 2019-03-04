package com.erezbiox1

import com.erezbiox1.models.User
import javax.servlet.*
import java.util.*
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.Cookie
import javax.servlet.http.HttpServletResponse


/**
 * Created by Erezbiox1 on 25/02/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
class SessionManager : Filter {

    override fun init(p0: FilterConfig?) {}

    override fun doFilter(q0: ServletRequest, q1: ServletResponse, chain: FilterChain) {
        val request = (q0 as? HttpServletRequest)!!
        val response = (q1 as? HttpServletResponse)!!

        var cookie = request.cookies?.find { it.name == "session" }?.value
        if(cookie == null || !sessionMap.containsKey(cookie)){
            cookie = UUID.randomUUID().toString()

            val session = Session(null)
            sessionMap[cookie] = session

            val c = Cookie("session", cookie)
            c.path = "/gallery"
            c.maxAge = -1
            response.addCookie(c)
        }

/*
        sessionMap[cookie]?.let {
            request.setAttribute("session", it)
        }
*/

        chain.doFilter(request, response)
    }

    override fun destroy() {}

    companion object {
        private val sessionMap = mutableMapOf<String, Session>()

        fun getSession(request: HttpServletRequest) : Session? {
            return sessionMap[request.cookies?.find { it.name == "session" }?.value]
        }
    }

    data class Session(var user: User?)
}