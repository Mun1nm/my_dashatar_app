// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  List<Color> colours = [
    Colors.white,
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow
  ];
  int appBar = 0;
  int scaffold = 0;

  Random random = new Random();
  List sounds = ["Kick.wav", "Ride.wav", "Snare.wav", "Tom.wav"];

  int soundPosition = 0;

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: colours[appBar],
          centerTitle: true,
          title: IconButton(
            icon: Icon(Icons.refresh, color: Colors.blueAccent),
            onPressed: () {
              soundPosition = random.nextInt(4);
            },
          ),
        ),
        backgroundColor: colours[scaffold],
        body: MaterialButton(
          child: Image.asset('images/dash.png'),
          onPressed: () {
            setState(() {
              player.play(AssetSource(sounds[soundPosition]));
              appBar = random.nextInt(6);
              scaffold = random.nextInt(6);
            });
          },
        ),
      ),
    );
  }
}

/*

Container(
height: 100.0,
width: 100.0,
color: Colors.green,
child: Image.asset('images/dash.png'),
),
*/
