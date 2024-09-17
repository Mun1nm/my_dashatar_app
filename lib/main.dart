// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Text> a = [Text("Dash1"), Text("Dash2")];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My Dashtar App"),
        ),
        body: Stack(
          children: [
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.yellow,
              //child: Image.asset('images/dash.png'),
            ),
            Positioned(
              left: 10.0,
              top: 20.0,
              child: Container(
                height: 50.0,
                width: 50.0,
                color: Colors.blue,
                //child: Image.asset('images/dash.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Container(
height: 100.0,
width: 100.0,
color: Colors.red,
child: Image.asset('images/dash.png'),
),
Container(
height: 100.0,
width: 100.0,
color: Colors.green,
child: Image.asset('images/dash.png'),
),
*/
