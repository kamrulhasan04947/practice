import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRow extends StatelessWidget {
  const AppRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invetory App'),
        backgroundColor: Colors.green,
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.network("https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no"),
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.network("https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no"),
            ),
            Container(
              height: 100,
              width: 100,
              child: Image.network("https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no"),
            ),

          ],
        ),
      ),
    );
  }
}
