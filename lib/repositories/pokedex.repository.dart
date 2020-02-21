import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokedex/consts/consts.api.dart';
import 'package:pokedex/models/pokedex.model.dart';


class PokedexRepository {
  
  Future<PokedexModel> getAll() async {
    var res = await http.get(ConstsApi.pokeApiUri);
    var decodeJson = jsonDecode(res.body);
    return PokedexModel.fromJson(decodeJson);
  }
}