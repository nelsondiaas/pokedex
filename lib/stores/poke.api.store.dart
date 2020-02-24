import 'package:pokedex/consts/consts.api.dart';
import 'package:pokedex/controller/poke.api.controller.dart';
import 'package:pokedex/models/pokedex.model.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:pokedex/models/pokemon.model.dart';
part 'poke.api.store.g.dart';


class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {

  PokeApiController _pokeApiController;

  @observable
  PokedexModel _pokedexModel;

  @observable
  PokemonModel _currentPokemon;

  @observable
  dynamic _currentColorPokemon;

  @observable
  int _currentPosition;

  @computed
  PokedexModel get pokedexModel => _pokedexModel;

  @computed
  PokemonModel get currentPokemon => _currentPokemon;

  @computed
  dynamic get currentColorPokemon => _currentColorPokemon;

  @computed
  int get currentPosition => _currentPosition;

  @action
  fetchPokemonList() {
    _pokedexModel = null;
    _pokeApiController = GetIt.instance<PokeApiController>();
    _pokeApiController.openPokedex().then((pokeList) {
      _pokedexModel = pokeList;
    });
  }

  @action
  PokemonModel getPokemon({int index}) {
    return _pokedexModel.pokemon[index];
  }
  
  @action
  setCurrentPokemon({int index}) {
    _currentPokemon = _pokedexModel.pokemon[index];
    _currentColorPokemon = ConstsApi.getColorType(type: _currentPokemon.type[0]);
    _currentPosition = index;
  }

  @action
  getImagePokemon({String number, double width, double height, dynamic alignment}) {
    _pokeApiController = GetIt.instance<PokeApiController>();
    return _pokeApiController.getImagePokemon(
      number: number, width: width, height: height, alignment: alignment);
  }
}

/*
clean: flutter packages pub run build_runner clean
build: flutter packages pub run build_runner build
*/