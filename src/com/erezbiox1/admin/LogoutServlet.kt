package com.erezbiox1.admin

import com.erezbiox1.AbstractServlet
import com.erezbiox1.SessionManager
import com.erezbiox1.models.User
import com.erezbiox1.utils.Utils
import com.erezbiox1.utils.get
import com.erezbiox1.utils.sql
import javax.servlet.http.Cookie
import javax.servlet.http.HttpServlet
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 07/02/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
class LogoutServlet : HttpServlet(){
    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        SessionManager.getSession(request)?.user = null;
        response.sendRedirect("/gallery")
    }
}