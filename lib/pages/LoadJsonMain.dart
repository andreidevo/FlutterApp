import 'dart:convert';

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';


//Create class for Lesson data
class LessonsStruct{
    //type: free|pro
    final String type;
    final String name;
    final String description;
    final String img_href;
    LessonsStruct(this.name, this.description,this.img_href, this.type);
}

class LoadJsonMain{

   List<LessonsStruct> list = [];
   Future<void> LoadData() async {
     Response response = await get(
         "https://www.dropbox.com/s/o6wcn3eqi1czr3l/New%20document%204.json?dl=1",
         headers: {'Content-Type': 'application/json'});
     Map<String, dynamic> data = jsonDecode(utf8.decode(response.bodyBytes));
     Map<String, dynamic> free = data['Free'];

     for (int i = 1; i < free.length + 1; i++)
      {
        var less = free['less_$i'];
        list.add(LessonsStruct(less['Name'], less['Desc'], less['img'], "free"));
      }


     Map<String, dynamic> pro = data['Free'];
     for (int i = 1; i < pro.length + 1; i++)
     {
       var less = free['less_$i'];
       list.add(LessonsStruct(less['Name'], less['Desc'],less['img'], "pro"));
     }


   }
}