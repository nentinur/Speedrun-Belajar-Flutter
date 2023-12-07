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
          title: Text("Belajar Guys"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 200,
                height: 100,
                child: Text(
                  "sebenernya saya capek, tapi yaa gimana lagi, terpaksa harus belajar ini",
                  maxLines: 2,
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontStyle: FontStyle.italic),
                ))),
      ),
    );
  }
}
