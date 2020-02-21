import 'dart:convert';
import 'package:pokedex/consts/consts.api.dart';
import 'package:pokedex/models/pokedex.model.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
part 'poke.api.store.g.dart';

class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {
  
  @observable
  PokedexModel pokedexModel;

  @action
  fetchPokemonList() {
    pokedexModel = null;
    loadPokeApi().then((pokeList) {
      pokedexModel = pokeList;
    });
  }

  Future<PokedexModel> loadPokeApi() async {
    try {
      final res = await http.get(ConstsApi.pokeApiUri);
      var decodeJson = jsonDecode(res.body);
      return PokedexModel.fromJson(decodeJson);
    } catch (err) {
      print("Error when loading the list");
      return null;
    }
  }
}

/*
clean: flutter packages pub run build_runner clean
build: flutter packages pub run build_runner build
*/