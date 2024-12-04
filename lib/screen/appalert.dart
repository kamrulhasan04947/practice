import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  const AppAlertDialog({super.key});

  void mySnackBar(String msg, BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  void myAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Alert!"),
          content: const Text('Do you want to delete?'),
          actions: [
            TextButton(
              onPressed: () {
                // Add your functionality here
                mySnackBar("Deleted successfully!", context);
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            myAlertDialog(context);
          },
          child: const Text("Show alert"),
        ),
      ),
    );
  }
}
