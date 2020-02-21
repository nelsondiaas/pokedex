// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke.api.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiStore on _PokeApiStoreBase, Store {
  final _$pokedexModelAtom = Atom(name: '_PokeApiStoreBase.pokedexModel');

  @override
  PokedexModel get pokedexModel {
    _$pokedexModelAtom.context.enforceReadPolicy(_$pokedexModelAtom);
    _$pokedexModelAtom.reportObserved();
    return super.pokedexModel;
  }

  @override
  set pokedexModel(PokedexModel value) {
    _$pokedexModelAtom.context.conditionallyRunInAction(() {
      super.pokedexModel = value;
      _$pokedexModelAtom.reportChanged();
    }, _$pokedexModelAtom, name: '${_$pokedexModelAtom.name}_set');
  }

  final _$_PokeApiStoreBaseActionController =
      ActionController(name: '_PokeApiStoreBase');

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'pokedexModel: ${pokedexModel.toString()}';
    return '{$string}';
  }
}
