import 'package:flutter/material.dart';

class Appbutton extends StatelessWidget {
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(25),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))));

  Appbutton({super.key});

  mySnackBar(msg, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                mySnackBar(
                  'This is Text button',
                  context,
                );
              },
              child: const Text('Text Button'),
            ),
            ElevatedButton(
              style: buttonStyle,
              onPressed: () {
                mySnackBar("This is a Elevated button", context);
              },
              child: const Text('Elevated button'),
            ),
            OutlinedButton(
                onPressed: () {
                  mySnackBar('This is outlined Button', context);
                },
                child: const Text(' Outlined button'))
          ],
        ),
      ),
    );
  }
}
