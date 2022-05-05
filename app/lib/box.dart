import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage();
  @override

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ConstrainedBox(
              constraints: const BoxConstraints.expand(),
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    
                ),),
            ), //ConstrainedBox
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: infoCard(context, "Mount Everest"),
                ),
              ],),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
                ),
              ],
            ),


          ]
      ), //Stack
    );
  }

  


  Widget frostedEdged(Widget child) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: child));
  }

  Widget infoCard(BuildContext context, String title) {
    return frostedEdged(Container(
        key: ValueKey<String>(title),
        height: MediaQuery
            .of(context)
            .size
            .height / 4,
        width: MediaQuery
            .of(context)
            .size
            .width / 1.2,
        color: Colors.teal.withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Mount Everest",
                  style: TextStyle(fontSize: 18.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),),

              Text(
                "Mount Everest, known in Nepali as Sagarmatha and in Tibetan as Chomolungma, is Earth's highest mountain above sea level. ",
                style: TextStyle(fontSize: 18.0,color: Colors.black),
              ),

            ],
          ),
        )));
  }

}