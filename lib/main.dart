import 'package:flutter/material.dart';
import 'bottomNavigationBar.dart';
import 'page_1_praktika.dart';
import 'page_2_praktika.dart';
import 'pages.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNB(),
    );
  }
}