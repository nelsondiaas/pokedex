import 'dart:convert';
import 'package:pokedex/consts/ConstsApi.dart';
import 'package:pokedex/models/PokeApi.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
part 'pokeapi_store.g.dart';

class PokeApiStore = _PokeApiStoreBase with _$PokeApiStore;

abstract class _PokeApiStoreBase with Store {
  
  @observable
  PokeApi pokeApi;

  @action
  fetchPokemonList() {
    pokeApi = null;
    loadPokeApi().then((pokeList) {
      pokeApi = pokeList;
    });
  }

  Future<PokeApi> loadPokeApi() async {
    try {
      final res = await http.get(ConstsApi.pokeApiUri);
      var decodeJson = jsonDecode(res.body);
      return PokeApi.fromJson(decodeJson);
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