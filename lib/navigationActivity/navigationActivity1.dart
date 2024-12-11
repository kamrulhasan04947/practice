import 'package:flutter/material.dart';
import 'package:practice/navigationActivity/navigationActivity2.dart';
import 'package:practice/screen/navigationHome.dart';

class Activity1 extends StatelessWidget {
  const Activity1({super.key, this.msg});

  final String? msg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg!),
      ),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Activity2(
                                  msg: "This is From Activity 1",
                                )));
                  },
                  child: const Text("Activity 2"))),
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
