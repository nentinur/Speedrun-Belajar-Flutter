import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// anonymus method adalah method yang tidak memiliki nama
// kita menggunakan anonymus method saat method hanya dipanggil sekali, contoh hanya untuk 1 tombol

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "belum ditekan";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymus Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "tombol ini ditekan";
                    });
                  },
                  child: Text("Tekan saya"))
            ],
          ),
        ),
      ),
    );
  }
}
