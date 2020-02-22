import 'package:flutter/material.dart';
import 'package:pokedex/repositories/pokedex.repository.dart';
import 'package:pokedex/models/pokedex.model.dart';


class PokeApiController {

  PokedexRepository _pokedexRepository;
  
  PokeApiController() {
    _pokedexRepository = new PokedexRepository();
  }

  Future<PokedexModel> openPokedex() async {
    try {
      return await _pokedexRepository.getAll();
    } catch (error, stacktrace) {
       print("Error when loading the list" + stacktrace.toString());
       return null;
    }
  }

  Widget getImagePokemon({String number}) {
    try {
      return _pokedexRepository.getImage(number: number);
    } catch (error, stacktrace) {
       print("Error when loading the image" + stacktrace.toString());
       return null;
    }
  }
}