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
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            color: Colors.amber,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              /// GUNAKAN GAMBAR DARI ASSETS
              image: AssetImage("assets/levi.png"),
              fit: BoxFit.contain,

              /// AMBIL GAMBAR DARI INTERNET
              //   image: NetworkImage(
              //       "https://e0.pxfuel.com/wallpapers/201/290/desktop-wallpaper-muichiro-tokito-demonslayer-anime-latest.jpg"),
              //   fit: BoxFit.contain,
              //   repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
