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
        {username, email, role, name, ip, time}
    ]
     */

    override fun doGet(request: HttpServletRequest, response: HttpServletResponse) {
        val list = mutableListOf<Array<String>>()

        sql("SELECT username, email, role, name, lastIP, lastLogin FROM users", single = false){
            while(it.next()){
                list.add(arrayOf(
                        it.get(1) ?: "null",
                        it.get(2) ?: "null",
                        it.get(3) ?: "member",
                        it.get(4) ?: "Jane Doe",
                        it.get(5) ?: "Unknown",
                        it.get(6) ?: "Unknown"
                ))
            }
        }

        request.setAttribute("users", list.toTypedArray())

        super.doGet(request, response)
    }
}