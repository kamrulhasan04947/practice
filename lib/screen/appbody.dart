import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text('Hello flutter'),
      ),
    );
  }
}
