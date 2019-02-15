package com.erezbiox1.admin

import com.erezbiox1.AbstractServlet
import com.erezbiox1.utils.Utils
import com.erezbiox1.utils.sql
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

        if(username.length !in 4..12){
            respond("Username size must be between 4 and 12.")
            return
        }

        if(!Utils.checkString(username, letters = true, numbers = true, special = false)){
            respond("Username can only have letters and numbers.")
            return
        }

        if(password.isNullOrBlank()){
            respond("Empty Password.")
            return
        }else password!!

        if(password.length !in 6..32){
            respond("Password size must be bigger than 6.")
        }

        if(remember == null){
            respond("Invalid Request.")
            return
        }
        //</editor-fold>

        respond("success")
    }
}