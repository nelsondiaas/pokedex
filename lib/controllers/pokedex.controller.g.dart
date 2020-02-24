// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokedexController on _PokedexControllerBase, Store {
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
  Computed<double> _$opacitytitleAppBarComputed;

  @override
  double get opacitytitleAppBar => (_$opacitytitleAppBarComputed ??=
          Computed<double>(() => super.opacitytitleAppBar))
      .value;
  Computed<double> _$opacityComputed;

  @override
  double get opacity =>
      (_$opacityComputed ??= Computed<double>(() => super.opacity)).value;
  Computed<int> _$currentPositionComputed;

  @override
  int get currentPosition =>
      (_$currentPositionComputed ??= Computed<int>(() => super.currentPosition))
          .value;

  final _$_pokedexModelAtom =
      Atom(name: '_PokedexControllerBase._pokedexModel');

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

  final _$_currentPokemonAtom =
      Atom(name: '_PokedexControllerBase._currentPokemon');

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
      Atom(name: '_PokedexControllerBase._currentColorPokemon');

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
      Atom(name: '_PokedexControllerBase._currentPosition');

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

  final _$_opacitytitleAppBarAtom =
      Atom(name: '_PokedexControllerBase._opacitytitleAppBar');

  @override
  double get _opacitytitleAppBar {
    _$_opacitytitleAppBarAtom.context
        .enforceReadPolicy(_$_opacitytitleAppBarAtom);
    _$_opacitytitleAppBarAtom.reportObserved();
    return super._opacitytitleAppBar;
  }

  @override
  set _opacitytitleAppBar(double value) {
    _$_opacitytitleAppBarAtom.context.conditionallyRunInAction(() {
      super._opacitytitleAppBar = value;
      _$_opacitytitleAppBarAtom.reportChanged();
    }, _$_opacitytitleAppBarAtom,
        name: '${_$_opacitytitleAppBarAtom.name}_set');
  }

  final _$_progressAtom = Atom(name: '_PokedexControllerBase._progress');

  @override
  double get _progress {
    _$_progressAtom.context.enforceReadPolicy(_$_progressAtom);
    _$_progressAtom.reportObserved();
    return super._progress;
  }

  @override
  set _progress(double value) {
    _$_progressAtom.context.conditionallyRunInAction(() {
      super._progress = value;
      _$_progressAtom.reportChanged();
    }, _$_progressAtom, name: '${_$_progressAtom.name}_set');
  }

  final _$_multipliAtom = Atom(name: '_PokedexControllerBase._multipli');

  @override
  double get _multipli {
    _$_multipliAtom.context.enforceReadPolicy(_$_multipliAtom);
    _$_multipliAtom.reportObserved();
    return super._multipli;
  }

  @override
  set _multipli(double value) {
    _$_multipliAtom.context.conditionallyRunInAction(() {
      super._multipli = value;
      _$_multipliAtom.reportChanged();
    }, _$_multipliAtom, name: '${_$_multipliAtom.name}_set');
  }

  final _$_opacityAtom = Atom(name: '_PokedexControllerBase._opacity');

  @override
  double get _opacity {
    _$_opacityAtom.context.enforceReadPolicy(_$_opacityAtom);
    _$_opacityAtom.reportObserved();
    return super._opacity;
  }

  @override
  set _opacity(double value) {
    _$_opacityAtom.context.conditionallyRunInAction(() {
      super._opacity = value;
      _$_opacityAtom.reportChanged();
    }, _$_opacityAtom, name: '${_$_opacityAtom.name}_set');
  }

  final _$_PokedexControllerBaseActionController =
      ActionController(name: '_PokedexControllerBase');

  @override
  void fetchPokemonList() {
    final _$actionInfo = _$_PokedexControllerBaseActionController.startAction();
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  PokemonModel getPokemon({int index}) {
    final _$actionInfo = _$_PokedexControllerBaseActionController.startAction();
    try {
      return super.getPokemon(index: index);
    } finally {
      _$_PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCurrentPokemon({int index}) {
    final _$actionInfo = _$_PokedexControllerBaseActionController.startAction();
    try {
      return super.setCurrentPokemon(index: index);
    } finally {
      _$_PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImagePokemon(
      {String number, double width, double height, dynamic alignment}) {
    final _$actionInfo = _$_PokedexControllerBaseActionController.startAction();
    try {
      return super.getImagePokemon(
          number: number, width: width, height: height, alignment: alignment);
    } finally {
      _$_PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSlidingState(dynamic progress) {
    final _$actionInfo = _$_PokedexControllerBaseActionController.startAction();
    try {
      return super.setSlidingState(progress);
    } finally {
      _$_PokedexControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'pokedexModel: ${pokedexModel.toString()},currentPokemon: ${currentPokemon.toString()},currentColorPokemon: ${currentColorPokemon.toString()},opacitytitleAppBar: ${opacitytitleAppBar.toString()},opacity: ${opacity.toString()},currentPosition: ${currentPosition.toString()}';
    return '{$string}';
  }
}
