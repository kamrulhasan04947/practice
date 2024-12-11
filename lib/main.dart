import 'package:flutter/material.dart';
import 'package:practice/screen/appalert.dart';
import 'package:practice/screen/appButton.dart';
import 'package:practice/screen/appRow.dart';
import 'package:practice/screen/appbody.dart';
import 'package:practice/screen/appcircularpprogressbar.dart';
import 'package:practice/screen/appcontainer.dart';
import 'package:practice/screen/applinearprogressbar.dart';
import 'package:practice/screen/cardapp.dart';
import 'package:practice/screen/gridViewBuilder.dart';
import 'package:practice/screen/listViewbuilderPrac.dart';
import 'package:practice/screen/navigationHome.dart';
import 'package:practice/screen/simpleform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppLinearProgressBar(),
    );
  }
}
