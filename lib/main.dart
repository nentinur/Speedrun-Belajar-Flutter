import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// statefull widget => widget yang punya keadaan, misal ada tombol yang bisa mengubah tampilan
// kalo stateless widget pake "stl", kalo statefull pake "stf"

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("belajar statefull widget"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 10 + number.toDouble()),
            ),
            ElevatedButton(
              child: Text("Tambah"),
              onPressed: tekanTombol,
            )
          ],
        )),
      ),
    );
  }
}
