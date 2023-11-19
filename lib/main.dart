import 'package:flutter/material.dart';
import 'package:tabs_app/screen/MyHomePage.dart';
import 'package:tabs_app/component/MyReusableWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tugas TabBerView',
      home: const MyHomePage(),
    );
  }
}
