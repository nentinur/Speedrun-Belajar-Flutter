import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// column = berjejer ke bawah
// row = berjejer ke samping
// stack = berjejer ke depan = seperti layer

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack & Align"),
        ),
        body: Stack(
          children: [
            //layer 1: background
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            child: Container(
                          color: Colors.white,
                        )),
                        Flexible(
                            child: Container(
                          color: Colors.grey,
                        ))
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            child: Container(
                          color: Colors.grey,
                        )),
                        Flexible(
                            child: Container(
                          color: Colors.white,
                        ))
                      ],
                    ))
              ],
            ),
            // layer 2
            ListView(
              children: [
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(fontSize: 30),
                    )),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "ini adalah text yang ada di lapisan tengah dari stack",
                      style: TextStyle(fontSize: 30),
                    )),
              ],
            ),
            // layer 3: button
            Align(
                // align untuk mengatur posisi, atas = -1, bawah 1, tengah 0, kanan = 1, kiri = -1
                alignment: Alignment(0.8, 0.9),
                child:
                    ElevatedButton(onPressed: null, child: Text("ini tombol")))
          ],
        ),
      ),
    );
  }
}
