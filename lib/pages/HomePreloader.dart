import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutterapp/pages/LoadJsonMain.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'HomeScreen.dart';

class HomePreloader extends StatefulWidget {

  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<HomePreloader> {


  String load = "Loading";
  Future<List<LessonsStruct>> getData() async {

    LoadJsonMain loader = LoadJsonMain();
    await loader.LoadData();

    load = "complete";
    Navigator.pushReplacementNamed(context, '/home', arguments: loader.list);

  }

  @override
  void initState() {
    super.initState();
    //тут грузим данные
    getData();
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:
          Center(child: SpinKitWave(
            color: Colors.black,
            size: 50.0,
          )),
      );
  }
}

