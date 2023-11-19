import 'package:flutter/material.dart';

class MyReusableWidget extends StatelessWidget {
  final String text;
  const MyReusableWidget({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.lightBlue,
      child: Column(
        children: [
          Text(text),
          ElevatedButton(
            onPressed: () {
// Lakukan sesuatu ketika tombol ditekan
            },
            child: const Text('Press me'),
          ),
        ],
      ),
    );
  }
}
