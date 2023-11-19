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

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Ini adalah Home Sreen'),
          SizedBox(height: 20),
          MyReusableWidget(text: 'Hello from Home Screen!'),
        ],
      ),
    );
  }
}
