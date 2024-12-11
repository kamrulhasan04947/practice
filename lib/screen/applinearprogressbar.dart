import 'package:flutter/material.dart';

class AppLinearProgressBar extends StatelessWidget {
  const AppLinearProgressBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Circuler Progress Bar"),
        backgroundColor: Colors.greenAccent,
      ),
      body: const Center(
          child: LinearProgressIndicator(
        minHeight: 50,
        color: Colors.blueAccent,
      )),
    );
  }
}
