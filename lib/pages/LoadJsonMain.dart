import 'dart:convert';

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

//Create class for Lesson data
class LessonsStruct{
    final name;
    final description;
    LessonsStruct(this.name, this.description);
}

class LoadJsonMain{

   List<LessonsStruct> list;
   Future<void> LoadData() async {

     Response response = await get("https://www.dropbox.com/s/447nyifczdya071/New%20document%204.json?dl=1");
     Map data = jsonDecode(response.body);
     LessonsStruct less1 = LessonsStruct("asdsad", "ASDASD");
     list = [less1];
   }
}