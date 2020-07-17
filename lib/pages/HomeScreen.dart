import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.black,),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.blue,),
                )
              ],
            ),
          )
      ),
    );
  }
}

