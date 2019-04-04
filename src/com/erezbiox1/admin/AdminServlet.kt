package com.erezbiox1.admin

import com.erezbiox1.AbstractServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 04/04/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
class AdminServlet : AbstractServlet("admin", "") {
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        response.sendRedirect("/gallery/admin/users")
    }
}