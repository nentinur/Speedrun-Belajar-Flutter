import 'dart:math';

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
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.teal,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.blue,
                      )),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.blueGrey,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.brown,
                )),
          ],
        ),
      ),
    );
  }
}
