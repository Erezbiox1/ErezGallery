package com.erezbiox1.utils

/**
 * Created by Erezbiox1 on 15/02/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
object Utils {
    // TODO - Improve this, this is temporary
    fun checkString(string: String, letters: Boolean = true, numbers: Boolean = true, special: Boolean = true) : Boolean {
        string.forEach {
            val isLetter = it.isLetter()
            val isNumber = it.isDigit()
            val isSpecial = it.toInt() in 33..47 || it.toInt() in 58..64 || it.toInt() in 91..96 || it.toInt() in 123..126
            if((!letters && isLetter) || (!numbers && isNumber) || (!special && isSpecial))
                return false
        }

        return true
    }

    @JvmStatic private val EMAIL_REGEX = """^[A-Za-z](.*)([@]{1})(.{1,})(\.)(.{1,})"""
    fun isEmailValid(email: String): Boolean {
        return EMAIL_REGEX.toRegex().matches(email)
    }
}