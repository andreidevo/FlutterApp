import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeScreen extends StatelessWidget {

  var images = ['assets/image1.png','assets/image2.png'];
  var freeTitles = ['Урок 1', 'Урок 2'];

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
                  flex: 2,

                  child: Container(
                      width: double.infinity,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "Добро пожаловать в новый",
                                    style: TextStyle(fontSize: 15, color: Colors.white70) ),
                                SizedBox(height: 3),
                                Text(
                                    "Курс для инвесторов",
                                    style: TextStyle(fontSize: 28, color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      ],),

                      decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage('assets/upper.png'),
                        fit: BoxFit.cover),
                      )
                    ),
                  ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        SizedBox(width: 40,),
                        Text(
                            "Курс для инвесторов",
                            style: TextStyle(fontSize: 22, color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    color: Colors.white,
                    child: Swiper.children(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:  AssetImage(images[0]),
                                    fit: BoxFit.fill))
                        ,
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                child: Row(

                                  children: [
                                    SizedBox(width: 20),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 50,),
                                        Text(
                                            freeTitles[0].toString(),
                                            style: TextStyle(fontSize: 28, color: Colors.white)),
                                        SizedBox(height: 10,),
                                        Text(
                                            "Какое-то название",
                                            style: TextStyle(fontSize: 20, color: Colors.white)),

                                      ],

                                    ),
                                  ],
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                                    child: SizedBox(

                                      width: double.infinity,
                                      child: RaisedButton(
                                        onPressed: (){},
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                            side: BorderSide(color: Colors.white)
                                        ),
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0, 20,0 , 20),
                                          child: Text("Начать",
                                              style: TextStyle(fontSize: 20, color: Colors.black)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),

                        Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:  AssetImage(images[1]),
                                    fit: BoxFit.fill)))


                      ],
                      loop: false,
                      viewportFraction: 0.8,
                      scale: 0.9,
                    )
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}


//),
//
//child: Row(
//children: [
//SizedBox(width: 20,),
//

