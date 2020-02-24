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
  Computed<PokemonModel> _$currentPokemonComputed;

  @override
  PokemonModel get currentPokemon => (_$currentPokemonComputed ??=
          Computed<PokemonModel>(() => super.currentPokemon))
      .value;
  Computed<dynamic> _$currentColorPokemonComputed;

  @override
  dynamic get currentColorPokemon => (_$currentColorPokemonComputed ??=
          Computed<dynamic>(() => super.currentColorPokemon))
      .value;
  Computed<int> _$currentPositionComputed;

  @override
  int get currentPosition =>
      (_$currentPositionComputed ??= Computed<int>(() => super.currentPosition))
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

  final _$_currentPokemonAtom = Atom(name: '_PokeApiStoreBase._currentPokemon');

  @override
  PokemonModel get _currentPokemon {
    _$_currentPokemonAtom.context.enforceReadPolicy(_$_currentPokemonAtom);
    _$_currentPokemonAtom.reportObserved();
    return super._currentPokemon;
  }

  @override
  set _currentPokemon(PokemonModel value) {
    _$_currentPokemonAtom.context.conditionallyRunInAction(() {
      super._currentPokemon = value;
      _$_currentPokemonAtom.reportChanged();
    }, _$_currentPokemonAtom, name: '${_$_currentPokemonAtom.name}_set');
  }

  final _$_currentColorPokemonAtom =
      Atom(name: '_PokeApiStoreBase._currentColorPokemon');

  @override
  dynamic get _currentColorPokemon {
    _$_currentColorPokemonAtom.context
        .enforceReadPolicy(_$_currentColorPokemonAtom);
    _$_currentColorPokemonAtom.reportObserved();
    return super._currentColorPokemon;
  }

  @override
  set _currentColorPokemon(dynamic value) {
    _$_currentColorPokemonAtom.context.conditionallyRunInAction(() {
      super._currentColorPokemon = value;
      _$_currentColorPokemonAtom.reportChanged();
    }, _$_currentColorPokemonAtom,
        name: '${_$_currentColorPokemonAtom.name}_set');
  }

  final _$_currentPositionAtom =
      Atom(name: '_PokeApiStoreBase._currentPosition');

  @override
  int get _currentPosition {
    _$_currentPositionAtom.context.enforceReadPolicy(_$_currentPositionAtom);
    _$_currentPositionAtom.reportObserved();
    return super._currentPosition;
  }

  @override
  set _currentPosition(int value) {
    _$_currentPositionAtom.context.conditionallyRunInAction(() {
      super._currentPosition = value;
      _$_currentPositionAtom.reportChanged();
    }, _$_currentPositionAtom, name: '${_$_currentPositionAtom.name}_set');
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
  PokemonModel getPokemon({int index}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.getPokemon(index: index);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCurrentPokemon({int index}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.setCurrentPokemon(index: index);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic getImagePokemon(
      {String number, double width, double height, dynamic alignment}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.getImagePokemon(
          number: number, width: width, height: height, alignment: alignment);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'pokedexModel: ${pokedexModel.toString()},currentPokemon: ${currentPokemon.toString()},currentColorPokemon: ${currentColorPokemon.toString()},currentPosition: ${currentPosition.toString()}';
    return '{$string}';
  }
}
