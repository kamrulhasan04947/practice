import 'package:flutter/material.dart';

class AppCircularProgressBar extends StatelessWidget {
  const AppCircularProgressBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Circuler Progress Bar"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          strokeWidth: 10,
          backgroundColor: Colors.greenAccent,
        ),
      ),
    );
  }
}
