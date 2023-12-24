import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("text field")),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                // obscureText: true, =>> untuk membuat tampilan text seperti password
                // maxLength: 5, =>> untuk membatasi jumlah input (contoh: hanya bisa menulis 5 karakter)
                // maxLines: 1, =>> jumlah maksimal baris
                decoration: InputDecoration(
                    fillColor: const Color.fromARGB(255, 203, 230, 243),
                    filled: true,
                    icon: Icon(Icons.adb),

                    /// prefix di awal, sufix di akhir
                    // prefix: Container( =>> bisa diisi apa aja, kalo pake ini gaboleh pake prefixText
                    //   width: 5, height: 5, color: Colors.amber,
                    // ),
                    // suffix: Container( =>> bisa diisi apa aja, kalo pake ini gaboleh pake sufixText
                    //   width: 5, height: 5, color: Colors.amber,
                    // ),
                    prefixIcon: Icon(Icons.person),
                    prefixText: "Name: ",
                    prefixStyle: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.w600),
                    labelText: "Nama Lengkap: ",
                    // labelStyle: TextStyle(), =>> untuk menghias label
                    hintText: "nama lengkapnya loh",
                    // hintStyle: TextStyle(), =>> untuk menghias hint
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
