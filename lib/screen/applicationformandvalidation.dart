import 'package:flutter/material.dart';

class FormApplicationValidation extends StatefulWidget {
  const FormApplicationValidation({super.key});

  @override
  State<FormApplicationValidation> createState() =>
      _FormApplicationValidationState();
}

class _FormApplicationValidationState extends State<FormApplicationValidation> {
  TextEditingController _nameFieldController = TextEditingController();
  TextEditingController _passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
