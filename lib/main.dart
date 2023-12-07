import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar lagi"),
        ),
        body: Container(
          color: Colors.greenAccent,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          child: Container(
              color: Colors.blueAccent,
              padding: EdgeInsets.only(top: 20, left: 30),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Colors.red, Colors.white])),
              )),
        ),
      ),
    );
  }
}
