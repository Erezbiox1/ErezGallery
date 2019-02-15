package com.erezbiox1.admin

import com.erezbiox1.AbstractServlet
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

        if(username.isNullOrBlank()){
            response.writer.print("Invalid Username.")
            response.writer.close()
            return
        }

        if(password.isNullOrBlank()){
            response.writer.print("Invalid Password.")
            response.writer.close()
            return
        }

        if(remember == null){
            response.writer.print("Invalid Request.")
            response.writer.close()
            return
        }

        println("=========")
        println("user: $username")
        println("pass: $password")
        println("remb: $remember")

        response.writer.print("success")
    }
}