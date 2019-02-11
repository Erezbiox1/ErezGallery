package com.erezbiox1

import com.erezbiox1.models.Photo
import com.erezbiox1.models.Trip
import com.erezbiox1.utils.get
import com.erezbiox1.utils.sql

/**
 * Created by Erezbiox1 on 08/01/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
// Maybe use SQL instead of caching ( pros: more professional and flexible, expendable. cons: possibly slower, longer to write ) - TODO
object PhotoManager {
    private val photoCache = mutableMapOf<String, MutableList<Photo>>() // trip to photo list
    private var tripCache = arrayOf<Trip>()

    init {
        refresh()
    }

    fun getPhoto(id: Int) : Photo? {
        refresh() // TODO REMOVE
        return photoCache.flatMap { it.value }.find { it.id == id }
    }

    fun getTrip(trip: String) : Trip? {
        refresh() // TODO REMOVE
        return tripCache.find { it.file == trip.toLowerCase() }
    }

    fun getPhotoArray(trip: String?, privileged: Boolean) : Array<Array<String>>? {
        refresh() // TODO REMOVE
        val list = (if(privileged) getPhotoList(trip) else getPhotoList(trip)?.filter { !it.hidden }) ?: return null

        val arrayList = mutableListOf<Array<String>>()
        list.forEach {
            arrayList.add(arrayOf(it.id.toString(), it.trip, it.name))
        }

        return arrayList.toTypedArray()
    }

    private fun getPhotoList(trip: String?) : List<Photo>? {
        refresh() // TODO REMOVE
        val list: MutableList<Photo>
        if(trip != null){
            val photos = photoCache[trip] ?: return null
            list = photos.toMutableList()
        }else{
            list = mutableListOf()
            photoCache.forEach { _, photos ->
                list.addAll(photos)
            }
        }
        return list
    }

    fun getTripArray() : Array<Array<String>>{
        val arrayList = mutableListOf<Array<String>>()
        tripCache.forEach {
            arrayList.add(arrayOf(it.name, it.file, it.date, it.desc))
        }

        arrayList[0][3] = tripCache[0].highlight

        return arrayList.toTypedArray()
    }

    fun refresh(){
        photoCache.clear()

        sql("SELECT * FROM photos", single = false) {
            while (it.next()) {
                val id = it.get<Int>(1) ?: error("SQL fetch an null id ( Shouldn't be possible )")
                val trip = it.get<String>(2) ?: error("SQL fetch an null trip ( Shouldn't be possible )")
                val name = it.get<String?>(3) ?: "Untitled Photo"
                val desc = it.get<String?>(4) ?: ""
                val hidden = it.get<Boolean>(5) ?: false

                val photo = Photo(id, trip, name, desc, hidden)
                photoCache.getOrPut(trip, { mutableListOf() }).add(photo)
            }
        }

        sql("SELECT * FROM trips ORDER BY id DESC", single = false){
            val list = mutableListOf<Trip>()

            while(it.next()){
                val id =   it.get<Int>   (1) ?: error("SQL fetch an null id ( Shouldn't be possible )")
                val file = it.get<String>(2) ?: error("SQL fetch an null file ( Shouldn't be possible )")
                val name = it.get<String>(3) ?: error("SQL fetch an null name ( Shouldn't be possible )")
                val date = it.get<String>(4) ?: "Unknown Date"
                val desc = it.get<String>(5) ?: "Empty Description"
                val high = it.get<String>(6) ?: "Empty Description"

                list.add(Trip(id, name, file, date, desc, high))
            }

            tripCache = list.toTypedArray()
        }
    }
}