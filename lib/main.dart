import 'package:pokedex/controllers/pokedex.controller.dart';
import 'package:pokedex/views/home/home.view.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() { 
  
  /* Config singleton, provider instances */
  GetIt provider = GetIt.instance;
  provider.registerSingleton<PokedexController>(PokedexController());

  return runApp(MyApp()); 
} 

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