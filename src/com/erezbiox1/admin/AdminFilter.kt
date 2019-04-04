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
    val allowed = listOf(
            "/admin/login",
            "/admin/register",
            "/admin/js",
            "/admin/vendors",
            "/admin/css",
            "/admin/fonts",
            "/admin/images"
    )
    override fun doFilter(req: ServletRequest, res: ServletResponse, chain: FilterChain) {
        val request = req as HttpServletRequest; val response = (res as HttpServletResponse)
        val isAdmin = SessionManager.getSession(request)?.user?.isAuthorized(10) ?: false
        //println(request.servletPath)
        if(isAdmin || allowed.find { request.servletPath.startsWith(it) } != null)
            chain.doFilter(req, res)
        else
            response.sendError(403, "Insufficient Permissions")
    }

    override fun init(p0: FilterConfig?) {}
    override fun destroy() {}
}