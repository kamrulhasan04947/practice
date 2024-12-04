import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text('Hello flutter'),
      ),
    );
  }
}
