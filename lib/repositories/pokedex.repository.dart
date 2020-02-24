import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/consts/consts.api.dart';
import 'package:pokedex/models/pokedex.model.dart';


class PokedexRepository {
  
  Future<PokedexModel> getAll() async {
    var res = await http.get(ConstsApi.pokeApiUri);
    var decodeJson = jsonDecode(res.body);
    return PokedexModel.fromJson(decodeJson);
  }
  
   Widget getImage({String number, double width, double height, dynamic alignment}) {
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
  }
}