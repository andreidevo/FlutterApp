import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/HomeScreen.dart';
import 'package:flutterapp/pages/LoadScreen.dart';
import 'package:flutterapp/pages/LessonScreen.dart';
import 'package:flutterapp/pages/HomePreloader.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

//


void main() => runApp(

  MaterialApp(
    home: MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePreloader(),
        '/home': (context) => HomeScreen(),
      },
    )
  )
);