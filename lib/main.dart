import 'package:flutter/material.dart';
import 'package:practice/screen/appalert.dart';
import 'package:practice/screen/appButton.dart';
import 'package:practice/screen/appRow.dart';
import 'package:practice/screen/appbody.dart';
import 'package:practice/screen/appcontainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppAlertDialog(),
    );
  }
}
