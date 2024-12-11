// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class gridViewBuilder extends StatelessWidget {
  gridViewBuilder({super.key});

  final List<Map<String, String>> items = [
    {
      "image":
          "https://images.pexels.com/photos/3736287/pexels-photo-3736287.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Hasan"
    },
    {
      "image":
          "https://images.pexels.com/photos/3736287/pexels-photo-3736287.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Jahir"
    },
    {
      "image":
          "https://images.pexels.com/photos/3736287/pexels-photo-3736287.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Mamun"
    },
    {
      "image":
          "https://images.pexels.com/photos/3736287/pexels-photo-3736287.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Rahul"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView builder'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                items[index]['image']!,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                // ignore: avoid_types_as_parameter_names
                errorBuilder: (context, error, StackTrace) {
                  return const Center(child: Text('Image not available'));
                },
              ),
            );
          }),
    );
  }
}
