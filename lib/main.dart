import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// karena saya males download font nyam jadi saya tulis langkah2nya saja
// menambahkan jenis font: tambah folder [fonts], masukkan font yang kita miliki ke dalam folder fonts
// kemudian di pubspec.yaml, tambahkan font yang kita miliki tadi
// lalu atur TextStyle(fontFamily: "NamaFont")
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextStyle"),
        ),
        body: Center(
          child: Text(
            "Ini adalah text",
            style: TextStyle(
                fontSize: 30,
                decoration: TextDecoration.overline,
                decorationColor: Colors.red,
                decorationThickness: 5,
                decorationStyle: TextDecorationStyle.wavy),
          ),
        ),
      ),
    );
  }
}
