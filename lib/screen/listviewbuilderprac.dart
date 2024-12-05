import 'package:flutter/material.dart';

class ListviewBuilderPrac extends StatelessWidget {
  ListviewBuilderPrac({super.key});

  List<Map<String, String>> items = [
    {"img": "https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no", "name": "Hasan"},
    {"img": "https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no", "name": "Masan"},
    {"img": "https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no", "name": "Lasan"},
    {"img": "https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no", "name": "kasan"},
    {"img": "https://lh3.googleusercontent.com/a/ACg8ocJcJczzz6advpUAKC7T5NmjmaPGuC8icSVbH7kZRYum9SLGYfg=s288-c-no", "name": "Bosan"},
  ];


  // void mySnackBar(msg, context){
  //   return ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(content: Text(msg)),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('List View Builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){},
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(items[index]['img']!, fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }
}
