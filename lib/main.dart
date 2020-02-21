import 'package:pokedex/views/home/home.view.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp()); 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: HomeView(),
    );
  }
}