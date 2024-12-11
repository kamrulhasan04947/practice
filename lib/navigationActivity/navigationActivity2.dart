import 'package:flutter/material.dart';
import 'package:practice/navigationActivity/navigationActivity1.dart';
import 'package:practice/screen/navigationHome.dart';

class Activity2 extends StatelessWidget {
  const Activity2({super.key, this.msg});

  final String? msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg!),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Activity1(
                                  msg: "This is From Activity 2",
                                )));
                  },
                  child: const Text('Activity1'))),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NavigationHome()));
                  },
                  child: const Text("Home"))),
        ],
      ),
    );
  }
}
