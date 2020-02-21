import 'package:pokedex/models/pokemon.model.dart';

class PokedexModel {
  List<PokemonModel> pokemon;

  PokedexModel({this.pokemon});

  PokedexModel.fromJson(Map<String, dynamic> json) {
    if (json['pokemon'] != null) {
      pokemon = new List<PokemonModel>();
      json['pokemon'].forEach((v) {
        pokemon.add(new PokemonModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pokemon != null) {
      data['pokemon'] = this.pokemon.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


