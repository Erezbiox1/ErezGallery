package com.erezbiox1.utils

import com.zaxxer.hikari.HikariDataSource
import java.sql.ResultSet

/**
 * Created by Erezbiox1 on 29/12/2018.
 * (C) 2018 Erez Rotem All Rights Reserved.
 */
object DB {

    val database = HikariDataSource()

    init {
        database.maximumPoolSize = 10
        database.driverClassName = "com.mysql.jdbc.Driver"
        database.jdbcUrl = "jdbc:mysql://localhost:3306/gallery"
        database.username = "root"
        database.password = ""
    }

}

fun sql(query: String, vararg objects: Any?, single: Boolean = true, function: ((ResultSet) -> Unit)? = null) {
    val db = DB.database.connection

    val statement = db.prepareStatement(query)
    objects.withIndex().forEach {
        when(it.value){
            is Int -> statement.setInt(it.index + 1, it.value as Int)
            is Boolean -> statement.setBoolean(it.index + 1, it.value as Boolean)
            else -> statement.setString(it.index + 1, it.value.toString())
        }
    }
    val result =
            if(statement.execute() && (!single || statement.resultSet.next()))
                statement.resultSet
            else null

    result?.let {
        function?.invoke(it)
    }

    result?.close()
    statement.close()
    db.close()
}

inline fun <reified T> ResultSet?.get(column: Int = 1) : T? {
    if(this == null)
        return null

    return when(T::class){
        java.lang.Integer::class -> this.getInt(column) as T
        java.lang.Integer::class.java -> this.getInt(column) as T
        java.lang.Boolean::class -> this.getBoolean(column) as T
        java.lang.Boolean::class.java -> this.getBoolean(column) as T
        java.sql.Date::class -> this.getDate(column) as T
        java.sql.Date::class.java -> this.getDate(column) as T
        else -> this.getString(column) as T
    }
}