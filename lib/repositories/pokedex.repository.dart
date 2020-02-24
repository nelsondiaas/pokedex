import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pokedex/interfaces/pokedex.repository.interface.dart';
import 'package:pokedex/models/pokedex.model.dart';
import 'package:pokedex/utils/consts.api.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class PokedexRepository implements PokedexRepositoryInterface {
  
  @override
  Future<PokedexModel> getAll() async {
    try {
      var res = await http.get(ConstsApi.pokeApiUri);
      var decodeJson = jsonDecode(res.body);
      return PokedexModel.fromJson(decodeJson);
    } catch (error, stacktrace) {
      print("Error when loading the list" + stacktrace.toString());
      return null;
    }
  }

  @override
  Widget getImage({String number, double width, double height, dynamic alignment}) {
    try {
      return CachedNetworkImage(
        alignment: alignment,
        width: width,
        height: height,
        placeholder: (context, url) => new Container(
          color: Colors.transparent,
        ),
        imageUrl:
            'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$number.png',
      );
     } catch (error, stacktrace) {
       print("Error when loading the image" + stacktrace.toString());
       return null;
    }
  }
}