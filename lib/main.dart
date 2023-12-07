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
        body: Column(
          // Column mengatur widget tersusun menumpuk dari atas ke bawah, kalo mau menyamping pakainya Row
          mainAxisAlignment:
              MainAxisAlignment.center, // mengatur dari atas ke tengah
          crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
          children: [
            Center(
                child: Container(
                    color: Colors.lightBlue,
                    width: 200,
                    height: 50,
                    child: Text(
                      "sebenernya saya capek, tapi yaa gimana lagi, terpaksa harus belajar ini",
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.italic),
                    ))),
            Center(
                child: Container(
                    color: Colors.lightBlue,
                    width: 200,
                    height: 50,
                    child: Text(
                      "sebenernya saya capek, tapi yaa gimana lagi, terpaksa harus belajar ini",
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.italic),
                    ))),
            Center(
                child: Container(
                    color: Colors.lightBlue,
                    width: 200,
                    height: 50,
                    child: Text(
                      "sebenernya saya capek, tapi yaa gimana lagi, terpaksa harus belajar ini",
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.italic),
                    ))),
            Row(
              children: [
                Container(
                  color: Colors.blueGrey,
                  width: 70,
                  height: 50,
                  child: Text(
                    "Oi",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  width: 70,
                  height: 50,
                  child: Text(
                    "Oi",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  color: Colors.blueGrey,
                  width: 70,
                  height: 50,
                  child: Text(
                    "Oi",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
