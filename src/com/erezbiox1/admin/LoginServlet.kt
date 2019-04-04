package com.erezbiox1.admin

import com.erezbiox1.AbstractServlet
import com.erezbiox1.SessionManager
import com.erezbiox1.models.User
import com.erezbiox1.utils.Utils
import com.erezbiox1.utils.get
import com.erezbiox1.utils.sql
import javax.servlet.http.Cookie
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 07/02/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
class LoginServlet : AbstractServlet("admin/login", ""){
    override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        val username: String? = request.getParameter("username")
        val password: String? = request.getParameter("password")
        val remember: Boolean? = request.getParameter("remember")?.let { it == "on" }

        val respond: (String) -> Unit = {
            response.writer.print(it)
            response.writer.close()
        }

        // <editor-fold desc="Basic Checks">
        if(username.isNullOrBlank()){
            respond("Empty Username.")
            return
        }else username!!

        if(password.isNullOrBlank()){
            respond("Empty Password.")
            return
        }else password!!

        if(remember == null){
            respond("Invalid Request.")
            return
        }
        //</editor-fold>

        var id: Int? = null
        var role: String? = null
        sql("SELECT id, role FROM users WHERE LOWER(username)=LOWER(?) AND password=?", username, password){
            id = it.get<Int>(1)
            role = it.get<String>(2)
        }

        if(id == null || role == null){
            respond("Invalid username or password.")
            return
        }

        val user = User(id!!)
        user.login(getIP(request))
        SessionManager.getSession(request)!!.user = user
        response.addCookie(Cookie("lastUser", username))
        respond("success")
    }

    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        if(request.getUser() != null){
            response.sendRedirect("/gallery")
        }else super.doGet(request, response)
    }
}