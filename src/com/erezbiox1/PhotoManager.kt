package com.erezbiox1

/**
 * Created by Erezbiox1 on 08/01/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
// Maybe use SQL instead of caching ( pros: more professional and flexible, expendable. cons: possibly slower, longer to write ) - TODO
object PhotoManager {
    private val cache = mutableMapOf<String, MutableList<Photo>>() // trip to photo list

    init {
        refresh()
    }

    fun getPhotoArray(trip: String?, privileged: Boolean) : Array<Array<String>>? {
        val list = (if(privileged) getPhotoList(trip) else getPhotoList(trip)?.filter { !it.hidden }) ?: return null

        val arrayList = mutableListOf<Array<String>>()
        list.forEach {
            arrayList.add(arrayOf(it.id.toString(), it.trip, it.name))
        }

        return arrayList.toTypedArray()
    }

    private fun getPhotoList(trip: String?) : List<Photo>? {
        val list: MutableList<Photo>
        if(trip != null){
            val photos = cache[trip] ?: return null
            list = photos.toMutableList()
        }else{
            list = mutableListOf()
            cache.forEach { _, photos ->
                list.addAll(photos)
            }
        }
        return list
    }

    fun refresh(){
        cache.clear()
        // todo sql pull
        sql("SELECT * FROM photos", single = false){
            while(it.next()) {
                val id = it.get<Int>(1) ?: error("SQL fetch an null id ( Shouldn't be possible )")
                val trip = it.get<String>(2) ?: error("SQL fetch an null trip ( Shouldn't be possible )")
                val name = it.get<String?>(3) ?: "Untitled Photo"
                val desc = it.get<String?>(4) ?: ""
                val hidden = it.get<Boolean>(5) ?: false

                val photo = Photo(id, trip, name, desc, hidden)
                cache.getOrPut(trip, { mutableListOf() }).add(photo)
            }
        }
    }
}