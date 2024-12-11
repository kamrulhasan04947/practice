import 'package:flutter/material.dart';
import 'package:practice/navigationActivity/navigationActivity1.dart';
import 'package:practice/navigationActivity/navigationActivity2.dart';

class NavigationHome extends StatelessWidget {
  const NavigationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Activity1(
                                msg: "This is from Home",
                              )));
                },
                child: const Text("Activity 1")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Activity2(
                                msg: "This is from home",
                              )));
                },
                child: const Text("Activity 2")),
          ],
        ),
      ),
    );
  }
}
