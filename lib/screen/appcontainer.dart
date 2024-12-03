import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppContiner extends StatelessWidget {
  const AppContiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),

      body: Container(
        height: 250,
        width: 250,
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 6),
          borderRadius: BorderRadius.circular(10)
        ),
        margin: EdgeInsets.fromLTRB(10, 20, 10,20),
        padding: EdgeInsets.all(20),
        alignment: Alignment.topCenter,
        child: Image.network('https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no'),
      ),
    );
  }
}
