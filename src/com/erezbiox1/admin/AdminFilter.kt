package com.erezbiox1.admin

import com.erezbiox1.SessionManager
import javax.servlet.*
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 30/03/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
class AdminFilter : Filter {
    override fun doFilter(req: ServletRequest, res: ServletResponse, chain: FilterChain) {
        val request = req as HttpServletRequest; val response = (res as HttpServletResponse)
        val isAdmin = SessionManager.getSession(request)?.user?.isAuthorized(10) ?: false
        if(isAdmin || request.servletPath == "/login.jsp" || request.servletPath == "/register.jsp")
            chain.doFilter(req, res)
        else
            response.sendError(403, "Insufficient Permissions")
    }

    override fun init(p0: FilterConfig?) {}
    override fun destroy() {}
}