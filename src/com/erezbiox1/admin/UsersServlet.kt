package com.erezbiox1.admin

import com.erezbiox1.AbstractServlet
import com.erezbiox1.utils.get
import com.erezbiox1.utils.sql
import java.sql.Date
import javax.servlet.http.HttpServletRequest
import javax.servlet.http.HttpServletResponse

/**
 * Created by Erezbiox1 on 30/03/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
class UsersServlet : AbstractServlet("admin/users", "") {

    /*
    user: [
        {id, username, email, role, name, ip, time}
    ]
     */

    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        val list = mutableListOf<Array<String>>()

        sql("SELECT id, username, email, role, lastIP, lastLogin FROM users", single = false){
            while(it.next()){
                list.add(arrayOf(
                        it.get(1) ?: error("Id is null"),
                        it.get(2) ?: "null",
                        it.get(3) ?: "null",
                        it.get(4) ?: "member",
                        it.get(5) ?: "Unknown",
                        it.get(6) ?: "Unknown"
                ))
            }
        }

        request.setAttribute("users", list.toTypedArray())

        super.doGet(request, response)
    }

    override fun doPost(request: HttpServletRequest, response: HttpServletResponse) {
        val respond: (String) -> Unit = {
            response.writer.print(it)
            response.writer.close()
        }
        try {
            when (request.getParameter("type") ?: error("Type is null")) {
                "create" -> {
                    val username = request.getParameter("username") ?: error("Username is null")
                    val password = request.getParameter("password") ?: error("Password is null")
                    val email = request.getParameter("email") ?: error("Email is null")
                    val role = request.getParameter("role") ?: error("Role is null")

                    sql("INSERT INTO users (username, password, email, role) VALUES (?, ?, ?, ?)",
                            username, password, email, role)
                }

                "change" -> {
                    val id = request.getParameter("id") ?: error("ID is null")
                    val username = request.getParameter("username") ?: error("Username is null")
                    val password = request.getParameter("password") ?: error("Password is null")
                    val email = request.getParameter("email") ?: error("Email is null")
                    val role = request.getParameter("role") ?: error("Role is null")

                    if(password == "notapassword")
                        sql("UPDATE users SET username = ?, email = ?, role = ? WHERE id=?", username, email, role, id)
                    else
                        sql("UPDATE users SET username = ?, password = ?, email = ?, role = ? WHERE id=?", username, password, email, role, id)
                }

                "delete" -> {
                    val id = request.getParameter("id") ?: error("ID is null")
                    sql("DELETE FROM users WHERE id=?", id)
                }

                else -> respond("Type not supported.")
            }

            respond("success")
        }catch (e: Exception){
            respond(e.message ?: "Whoops! Something went wrong.")
        }
    }
}