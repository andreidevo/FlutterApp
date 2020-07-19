import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class LessonScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: false,
            floating: false,
            snap: false,
            expandedHeight: 50.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Урок 1', style: TextStyle(color: Colors.black),),

            ),
            backgroundColor: Colors.white,
          ),
          SliverToBoxAdapter(
            child: SizedBox(

              child : _allText(context)



            ),
          ),

        ],
      )
    );
  }
}

Widget _newText(BuildContext context, String type)
{
  switch(type){
    case "head":
      return Align(
          alignment: Alignment.topLeft,
          child: Text("Head", style: TextStyle(fontSize: 25, fontFamily: "Roboto_Black"),));
      break;

    case "text":
      return RichText(
        textAlign: TextAlign.justify,
        text: TextSpan(text: data, style: TextStyle(color: Colors.black))
      );
      break;
    case "idea":
      return Row(
        children: [
          SizedBox(width: 20,),
          Container(width: 3, color: Colors.black,),
          SizedBox(width: 5,),
          Text("ideaa", style: TextStyle(fontSize: 16),),
        ],
      );
      break;
  }
}

Widget _allText(BuildContext context)
{
  return Container(
    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
    child: Column(

      children: [
      _newText(context, "head"),
      SizedBox(height: 5,),
      _newText(context, "text"),
      SizedBox(height: 5,),
      _newText(context, "head"),
      SizedBox(height: 5,),
      _newText(context, "idea"),
      SizedBox(height: 5,),
      _newText(context, "text"),
      SizedBox(height: 5,),
      _newText(context, "text"),

    ],),
  );
}

var data = '''
int
Integer values no larger than 64 bits, depending on the platform. On the Dart VM, values can be from -263 to 263 - 1. Dart that’s compiled to JavaScript uses JavaScript numbers, allowing values from -253 to 253 - 1.
double
64-bit (double-precision) floating-point numbers, as specified by the IEEE 754 standard.
Both int and double are subtypes of num. The num type includes basic operators such as +, -, /, and *, and is also where you’ll find abs(), ceil(), and floor(), among other methods. (Bitwise operators, such as >>, are defined in the int class.) If num and its subtypes don’t have what you’re looking for, the dart:math library might.
''';