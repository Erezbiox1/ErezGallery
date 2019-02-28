package com.erezbiox1

import com.erezbiox1.models.Photo
import com.erezbiox1.models.Trip
import com.erezbiox1.utils.get
import com.erezbiox1.utils.sql
import java.sql.ResultSet

/**
 * Created by Erezbiox1 on 08/01/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
object PhotoManager {

    fun getPhotoArray(trip: String?, privileged: Boolean) : Array<Array<String>>? {
        val list = (if(privileged) getPhotoList(trip) else getPhotoList(trip)?.filter { !it.hidden }) ?: return null

        val arrayList = mutableListOf<Array<String>>()
        list.forEach {
            arrayList.add(arrayOf(it.id.toString(), it.trip, it.name))
        }

        return arrayList.toTypedArray()
    }

    fun getTripArray() : Array<Array<String>> {
        val arrayList = mutableListOf<Array<String>>()
        getTripList().forEach {
            arrayList.add(arrayOf(it.name, it.file, it.date, it.desc))
        }

        arrayList[0][3] = getTripList()[0].highlight

        return arrayList.toTypedArray()
    }

    //////////////////////////////////////////////////

    fun getPhoto(id: Int) : Photo? {
        var photo: Photo? = null
        sql("SELECT * FROM photos WHERE id=?", id) {
            photo = getPhotoFromResult(it)
        }
        return photo
    }

    fun getTrip(trip: String) : Trip? {
        var result: Trip? = null
        sql("SELECT * FROM trips WHERE name=?", trip) {
            result = getTripFromResult(it)
        }
        return result
    }

    private fun getPhotoList(trip: String?) : List<Photo>? {
        val list = mutableListOf<Photo>()
        val function: (ResultSet) -> Unit = {
            while (it.next()) {
                list.add(getPhotoFromResult(it))
            }
        }
        if(trip == null)
            sql("SELECT * FROM photos", single = false, function = function)
        else
            sql("SELECT * FROM photos WHERE trip=?", trip, single = false, function = function)

        return list
    }

    private fun getTripList() : List<Trip> {
        val list = mutableListOf<Trip>()
        sql("SELECT * FROM trips ORDER BY id DESC", single = false){
            while(it.next()){
                list.add(getTripFromResult(it))
            }
        }
        return list
    }

    /////////////////////////////////////////////////

    private fun getTripFromResult(db: ResultSet) : Trip {
        val id =   db.get<Int>   (1) ?: error("SQL fetch an null id ( Shouldn't be possible )")
        val file = db.get<String>(2) ?: error("SQL fetch an null file ( Shouldn't be possible )")
        val name = db.get<String>(3) ?: error("SQL fetch an null name ( Shouldn't be possible )")
        val date = db.get<String>(4) ?: "Unknown Date"
        val desc = db.get<String>(5) ?: "Empty Description"
        val high = db.get<String>(6) ?: "Empty Description"

        return Trip(id, name, file, date, desc, high)
    }

    private fun getPhotoFromResult(db: ResultSet) : Photo {
        val id = db.get<Int>(1) ?: error("SQL fetch an null id ( Shouldn't be possible )")
        val trip = db.get<String>(2) ?: error("SQL fetch an null trip ( Shouldn't be possible )")
        val name = db.get<String?>(3) ?: "Untitled Photo"
        val desc = db.get<String?>(4) ?: ""
        val hidden = db.get<Boolean>(5) ?: false

        return Photo(id, trip, name, desc, hidden)
    }
}