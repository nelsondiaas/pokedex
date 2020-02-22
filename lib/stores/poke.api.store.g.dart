// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke.api.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiStore on _PokeApiStoreBase, Store {
  Computed<PokedexModel> _$pokedexModelComputed;

  @override
  PokedexModel get pokedexModel => (_$pokedexModelComputed ??=
          Computed<PokedexModel>(() => super.pokedexModel))
      .value;

  final _$_pokedexModelAtom = Atom(name: '_PokeApiStoreBase._pokedexModel');

  @override
  PokedexModel get _pokedexModel {
    _$_pokedexModelAtom.context.enforceReadPolicy(_$_pokedexModelAtom);
    _$_pokedexModelAtom.reportObserved();
    return super._pokedexModel;
  }

  @override
  set _pokedexModel(PokedexModel value) {
    _$_pokedexModelAtom.context.conditionallyRunInAction(() {
      super._pokedexModel = value;
      _$_pokedexModelAtom.reportChanged();
    }, _$_pokedexModelAtom, name: '${_$_pokedexModelAtom.name}_set');
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
  dynamic getPokemon({int index}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.getPokemon(index: index);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getImagePokemon({String number}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.getImagePokemon(number: number);
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
