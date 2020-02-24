import 'package:flutter/material.dart';
import 'package:pokedex/models/pokedex.model.dart';


abstract class PokedexRepositoryInterface {
  Future<PokedexModel> getAll();
  Widget getImage({String number, double width, double height, dynamic alignment});
}