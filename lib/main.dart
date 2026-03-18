import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const PinterestCloneApp());
}

class PinterestCloneApp extends StatelessWidget {
  const PinterestCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlownStudio',
      theme: ThemeData(
        primarySwatch: Colors.teal, 
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}