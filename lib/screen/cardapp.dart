import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  const CardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card APP'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          shadowColor: Color.fromRGBO(33, 191, 115, 1),
          color: Color.fromRGBO(33, 191, 115, 1),
          elevation: 80,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text('This is card'),
            ),
          ),
        ),
      ),
    );
  }
}
