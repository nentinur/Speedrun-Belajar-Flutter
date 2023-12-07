import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// List View berbeda dengan column
// column, jika monitor tiak cukup untuk menampilkan widget2 tersebut, dia akan error
// sedangkan pada listview, dia bisa di scroll

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List View")),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "data ke-" + counter.toString(),
                          style: TextStyle(fontSize: 35),
                        ));
                        counter++;
                      });
                    },
                    child: Text("Tambah data")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        widgets.removeLast();
                        counter--;
                      });
                    },
                    child: Text("Hapus data"))
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
