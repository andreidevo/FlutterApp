import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/HomeScreen.dart';
import 'package:flutterapp/pages/LessonScreen.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'HomePreloader.dart';


class LoadScreen extends StatelessWidget {

  static BuildContext contexter;
  LoadScreen(BuildContext context){
      contexter = context;
  }

  final pages = [
    Container(
      color: Colors.pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/1.png',
            fit: BoxFit.cover,
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Column(
            children: <Widget>[
              Text(
                "Hi",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "It's Me",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Sahdeep",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    ),
    Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/1.png',
            fit: BoxFit.cover,
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Column(
            children: <Widget>[
              new Text(
                "Take a",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "look at",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
              new Text(
                "Liquid Swipe",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Billy",
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    ),
    Container(
      color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/1.png',
            fit: BoxFit.cover,
          ),
          Padding(padding: const EdgeInsets.all(20.0)),
          Column(
            children: <Widget>[
              Text(
                "Liked?",
                style: TextStyle(
                    fontSize: 30
              ),

              ),
              RaisedButton(
                onPressed: () {

                  Navigator.push(
                    contexter,
                    MaterialPageRoute(builder: (context) => HomePreloader()));

                },
                child:
                  Text('Enabled Button', style: TextStyle(fontSize: 20)),
              )
            ],
          )
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
            body: LiquidSwipe(
              pages: pages,
              fullTransitionValue: 1000,
              enableSlideIcon: false,
              enableLoop: false,
            )));

  }
}