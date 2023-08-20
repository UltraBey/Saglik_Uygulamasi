import 'package:flutter/material.dart';
import './input_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.tealAccent,
        primarySwatch: Colors.green,
      ),
      home: InputPage(),
    );
  }
}
