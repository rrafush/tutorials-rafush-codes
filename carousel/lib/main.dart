import 'package:carousel/carousel_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu carrossel',
      theme: ThemeData(),
      home: const CarouselPage(),
    );
  }
}
