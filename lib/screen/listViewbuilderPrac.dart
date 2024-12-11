import 'package:flutter/material.dart';

class Listviewbuilderprac extends StatelessWidget {
  Listviewbuilderprac({super.key});

  final List<Map<String, String>> items = [
    {
      "image":
          "https://images.pexels.com/photos/3979134/pexels-photo-3979134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Hasan"
    },
    {
      "image":
          "https://images.pexels.com/photos/3979134/pexels-photo-3979134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Jahir"
    },
    {
      "image":
          "https://images.pexels.com/photos/3979134/pexels-photo-3979134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Mamun"
    },
    {
      "image":
          "https://images.pexels.com/photos/3979134/pexels-photo-3979134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Rahul"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listviewbuilder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Example: Show a snackbar with the name
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Clicked: ${items[index]['name']}')),
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  items[index]['image']!,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(child: Text('Image not available'));
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
