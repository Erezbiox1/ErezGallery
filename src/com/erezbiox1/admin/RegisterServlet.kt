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
class RegisterServlet : AbstractServlet("admin/register", ""){
    override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        val username: String? = request.getParameter("username")
        val email: String? = request.getParameter("email")
        val password: String? = request.getParameter("password")
        val repassword: String? = request.getParameter("repassword")

        val respond: (String) -> Unit = {
            response.writer.print(it)
            response.writer.close()
        }

        // <editor-fold desc="Basic Checks">
        if(username.isNullOrBlank()){
            respond("Empty Username.")
            return
        }else username!!

        if(username.length !in 4..12){
            respond("Username size must be between 4 and 12.")
            return
        }

        if(!Utils.checkString(username, letters = true, numbers = true, special = false)){
            respond("Username can only have letters and numbers.")
            return
        }

        if(email.isNullOrBlank()){
            respond("Empty email.")
            return
        }else email!!

        if(!Utils.isEmailValid(email)){
            respond("Invalid email.")
            return
        }

        if(password.isNullOrBlank()){
            respond("Empty Password.")
            return
        }else password!!

        if(password.length !in 6..32){
            respond("Password size must be bigger than 6.")
            return
        }

        if(repassword.isNullOrBlank()){
            respond("Please repeat your password.")
            return
        }

        if(password != repassword){
            respond("Passwords does not match.")
            return
        }
        //</editor-fold>

        var id: Int? = null
        sql("SELECT id FROM users WHERE LOWER(username)=LOWER(?)", username){
            id = it.get<Int>()
        }

        if(id != null){
            respond("Username is taken.")
            return
        }

        sql("INSERT INTO users (username, password, email) VALUES (?, ?, ?)", username, password, email)

        sql("SELECT id FROM users WHERE LOWER(username)=LOWER(?)", username){
            id = it.get<Int>()
        }

        SessionManager.getSession(request)?.user = User(id!!)
        response.addCookie(Cookie("lastUser", username))
        respond("success")
    }

    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        if(request.getUser() != null){
            response.sendRedirect("/gallery")
        }else super.doGet(request, response)
    }
}