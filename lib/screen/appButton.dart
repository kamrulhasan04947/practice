import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbutton extends StatelessWidget {
  const Appbutton({super.key});


  mySnackBar(msg, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My profile'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: (){
                  mySnackBar(
                    'This is Text button',
                    context,
                  );
                },
                child: const Text('Text Button'),
            ),

            ElevatedButton(
                onPressed: (){
                  mySnackBar("This is a Elevated button", context);
                },
                child: const Text('Elevated button'),
            ),

            OutlinedButton(onPressed: (){
              mySnackBar('This is outlined Button', context);
            }, child: const Text(' Outlined button'))

          ],
        ),
      ),
    );
  }
}
