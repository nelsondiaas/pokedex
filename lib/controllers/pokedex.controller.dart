import 'package:pokedex/repositories/pokedex.repository.dart';
import 'package:pokedex/models/pokedex.model.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:pokedex/utils/consts.api.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'pokedex.controller.g.dart';


class PokedexController = _PokedexControllerBase with _$PokedexController;

abstract class _PokedexControllerBase with Store {

  PokedexRepository _pokedexRepository;

  _PokedexControllerBase() {
    _pokedexRepository = new PokedexRepository();
  }

  @observable
  PokedexModel _pokedexModel;

  @observable
  PokemonModel _currentPokemon;

  @observable
  dynamic _currentColorPokemon;

  @observable
  int _currentPosition;

  @observable
  double _opacitytitleAppBar = 0;

  @observable
  double _progress = 0;

  @observable
  double _multipli = 1;

  @observable
  double _opacity = 1;

  @computed
  PokedexModel get pokedexModel => _pokedexModel;

  @computed
  PokemonModel get currentPokemon => _currentPokemon;

  @computed
  dynamic get currentColorPokemon => _currentColorPokemon;

  @computed
  double get opacitytitleAppBar => _opacitytitleAppBar;

  @computed
  double get opacity => _opacity;

  @computed
  int get currentPosition => _currentPosition;

  @action
  void fetchPokemonList() {
    _pokedexModel = null;
    _pokedexRepository.getAll().then((pokeList) {
      _pokedexModel = pokeList;
    });
  }

  @action
  PokemonModel getPokemon({int index}) {
    return _pokedexModel.pokemon[index];
  }
  
  @action
  void setCurrentPokemon({int index}) {
    _currentPokemon = _pokedexModel.pokemon[index];
    _currentColorPokemon = ConstsApi.getColorType(type: _currentPokemon.type[0]);
    _currentPosition = index;
  }

  @action
  Widget getImagePokemon({String number, double width, double height, dynamic alignment}) {
    return _pokedexRepository.getImage(
      number: number, width: width, height: height, alignment: alignment);
  }

  @action
  void setSlidingState(progress) {
    _progress = progress;
    _multipli = 1 - ConstsApi.interval(lower: 0.0, upper: 0.7, progress: _progress);
    _opacity = _multipli;
    _opacitytitleAppBar = _multipli = ConstsApi.interval(lower: 0.55, upper: 0.8, progress: _progress);
  }

}

/*
clean: flutter packages pub run build_runner clean
build: flutter packages pub run build_runner build
*/