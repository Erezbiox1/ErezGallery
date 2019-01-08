package com.erezbiox1

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

fun sql(query: String, vararg objects: Any, single: Boolean = true, function: ((ResultSet?) -> Unit)? = null) {

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

    function?.invoke(result)

    result?.close()
    statement.close()
    db.close()
}