package com.erezbiox1.models

import com.erezbiox1.utils.get
import com.erezbiox1.utils.sql

/**
 * Created by Erezbiox1 on 25/02/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
class User(val id: Int) {
    fun getRole() : String? {
        var role: String? = null
        sql("SELECT role FROM users WHERE id=?", id){
            role = it.get(1)
        }
        return role
    }

    override fun toString(): String {
        return "User(id=$id)"
    }
}