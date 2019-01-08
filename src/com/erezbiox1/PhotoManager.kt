package com.erezbiox1

/**
 * Created by Erezbiox1 on 08/01/2019.
 * (C) 2019 Erez Rotem All Rights Reserved.
 */
object PhotoManager {
    private val cache = mutableMapOf<String, List<Photo>>() // trip to photo list

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
    }
}