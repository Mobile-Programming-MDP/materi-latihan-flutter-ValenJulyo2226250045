import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello Widget",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Valen Julyo Armando Davincy Lin"),
          ),
          body: const Center(
            child: Text("Hello Valen Julyo Armando Davincy Lin"),
          ),
        ));
  }
}