import 'package:pokedex/controller/poke.api.controller.dart';
import 'package:pokedex/models/pokedex.model.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'poke.api.store.g.dart';


class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {
  
  @observable
  PokedexModel pokedexModel;

  @action
  fetchPokemonList() {
    PokeApiController pokeApiController = GetIt.instance<PokeApiController>();
    pokeApiController.openPokedex().then((pokeList) {
      pokedexModel = pokeList;
    });
  }
}

/*
clean: flutter packages pub run build_runner clean
build: flutter packages pub run build_runner build
*/