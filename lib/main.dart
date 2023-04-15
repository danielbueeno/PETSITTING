import 'package:flutter/material.dart';
import 'package:pet_sitting_project/Widgets/organisms/organism_welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pet Sitting App',
      home: OrganismWelcome(),
    );
  }
}
