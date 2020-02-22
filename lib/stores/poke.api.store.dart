import 'package:flutter/material.dart';
import 'package:pokedex/controller/poke.api.controller.dart';
import 'package:pokedex/models/pokedex.model.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'poke.api.store.g.dart';


class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {

  PokeApiController _pokeApiController;

  @observable
  PokedexModel _pokedexModel;

  @computed
  PokedexModel get pokedexModel => _pokedexModel;

  @action
  fetchPokemonList() {
    _pokedexModel = null;
    _pokeApiController = GetIt.instance<PokeApiController>();
    _pokeApiController.openPokedex().then((pokeList) {
      _pokedexModel = pokeList;
    });
  }

  @action
  getPokemon({int index}) {
    return _pokedexModel.pokemon[index];
  }

  @action
  getImagePokemon({String number}) {
    _pokeApiController = GetIt.instance<PokeApiController>();
    return _pokeApiController.getImagePokemon(number: number);
  }
}

/*
clean: flutter packages pub run build_runner clean
build: flutter packages pub run build_runner build
*/