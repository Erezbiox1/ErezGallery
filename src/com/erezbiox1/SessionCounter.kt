package com.erezbiox1

import javax.servlet.http.HttpSessionEvent
import javax.servlet.http.HttpSessionListener

class SessionCounter : HttpSessionListener {

    override fun sessionCreated(se: HttpSessionEvent) {
        activeSessions++
    }

    override fun sessionDestroyed(se: HttpSessionEvent) {
        if (activeSessions > 0)
            activeSessions--
    }

    companion object {
        var activeSessions = 0
    }

}