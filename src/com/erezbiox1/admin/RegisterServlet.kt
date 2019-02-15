package com.erezbiox1.admin

import com.erezbiox1.AbstractServlet
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

        if(username.isNullOrBlank()){
            response.writer.print("Invalid Username.")
            response.writer.close()
            return
        }

        if(email.isNullOrBlank()){
            response.writer.print("Invalid Email.")
            response.writer.close()
            return
        }

        if(password.isNullOrBlank() || repassword.isNullOrBlank()){
            response.writer.print("Invalid Password.")
            response.writer.close()
            return
        }

        println("=========")
        println("user: $username")
        println("email: $email")
        println("pass: $password")
        println("repass: $repassword")

        response.writer.println("success")
    }
}