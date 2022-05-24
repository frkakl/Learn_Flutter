// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var qindex = 0;

  void answer() {
    setState(() {
      qindex = qindex + 1;
    });
    print(qindex);
  }

  @override
  Widget build(BuildContext context) {
    var question = ["What's your favorite color?", "What's your favorite car?"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Shoot"),
        centerTitle: true,
        backgroundColor: Colors.lime,
      ),

      body: Column(children: [
        Text(
          question[qindex],
          style: TextStyle(
            fontSize: 23,
            fontFamily: "Koulen",
            color: Colors.grey,
          ),
        ),
        ElevatedButton(
          onPressed: answer,
          child: Text("Orange"),
        ),
        ElevatedButton(
          onPressed: answer,
          child: Text("Blue"),
        ),
      ]),
      // body: Center(
      // child: Text(
      //   "",
      //    style: TextStyle(
      //      color: Colors.grey,
      //      fontSize: 35,
      //      fontWeight: FontWeight.bold,
      //      letterSpacing: 2.0,
      //      fontFamily: "Koulen",
      //    ),
      //     ),

      // child: Image.asset("assets/photo-2.jpg"),
      // child: NetworkImage(url)

      // child: Icon(
      // Icons.airplanemode_inactive,
      //   size: 70,
      //   color: Colors.lightGreen,
      // ),

      // child: IconButton(
      //     onPressed: () {
      //       print("You Can Send Your Mail To o.farukdev@gmail.com");
      //     },
      //     icon: Icon(Icons.mail_outline),
      //     color: Colors.red),

      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Get the Fuck out of this App!!");
        },
        backgroundColor: Colors.teal[200],
        child: const Text("Button"),
      ),
    );
  }
}
