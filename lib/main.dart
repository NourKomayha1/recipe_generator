import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(RandomRecipeApp());

class RandomRecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Recipe Generator',
      theme: ThemeData(
        fontFamily: 'Arial',
      ),
      home: RecipePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}