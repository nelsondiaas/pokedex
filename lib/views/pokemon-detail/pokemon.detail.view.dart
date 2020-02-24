import 'package:pokedex/controllers/pokedex.controller.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


class PokemonDetailView extends StatefulWidget {

  final int index;

  PokemonDetailView({Key key, this.index}) : super(key: key);

  @override
  _PokemonDetailViewState createState() => _PokemonDetailViewState();
}

class _PokemonDetailViewState extends State<PokemonDetailView> {

  PokedexController _pokedexController;
  PageController _pageController;
  MultiTrackTween _animation;
  
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.index);
    _pokedexController = GetIt.instance<PokedexController>();
    _animation = rotation();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Observer(
          builder: (BuildContext context) {
            return AppBar(
              title: Opacity(
                child: Text(
                  _pokedexController.currentPokemon.name,
                  style: TextStyle(
                      fontFamily: 'Google',
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
                opacity: _pokedexController.opacitytitleAppBar,
              ),
              elevation: 0,
              backgroundColor: _pokedexController.currentColorPokemon,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ],
            );
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          Observer(
            builder: (context) {
              return Container(color: _pokedexController.currentColorPokemon);
            },
          ),
          Container(height: MediaQuery.of(context).size.height / 3),
          Observer(builder: (context) {
            return SlidingSheet(
              listener: (state) {
                _pokedexController.setSlidingState(state.progress);
              },
              elevation: 0,
              cornerRadius: 30,
              snapSpec: const SnapSpec(
                snap: true,
                snappings: [0.7, 1.0],
                positioning: SnapPositioning.relativeToAvailableSpace,
              ),
              builder: (context, state) {
                return Container(
                  height: MediaQuery.of(context).size.height,
                );
              },
            );
          }),
          Observer(builder: (context) {
            return Opacity(
              opacity: _pokedexController.opacity,
              child: Padding(
                child: SizedBox(
                  height: 200,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      _pokedexController.setCurrentPokemon(index: index);
                    },
                    itemCount: _pokedexController.pokedexModel.pokemon.length,
                    itemBuilder: (BuildContext context, int _index) {
                      PokemonModel _pokemonItem = _pokedexController.getPokemon(index: _index);
                      return Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          ControlledAnimation(
                            playback: Playback.LOOP,
                            duration: _animation.duration,
                            tween: _animation,
                            builder: (context, animation) {
                              return Transform.rotate(
                                child: Hero(
                                  child: Opacity(
                                  child: Image.asset('assets/images/pokeball_white.png',
                                    height: 270,
                                    width: 270,
                                  ),
                                  opacity: 0.2,
                                ), 
                                tag: _index.toString(),
                              ), 
                              angle: animation['rotation'],
                              );
                            }),
                            Observer(builder: (BuildContext context) {
                              return AnimatedPadding(
                                child: _pokedexController.getImagePokemon(
                                  number: _pokemonItem.num, 
                                  width: 160, height: 160, 
                                  alignment: Alignment.center
                                ),
                                curve: Curves.bounceInOut,
                                duration: Duration(milliseconds: 400), 
                                padding: EdgeInsets.all(_index == _pokedexController.currentPosition ? 0 : 60));
                            }),
                        ]
                      );
                    },
                  )),
                padding: EdgeInsets.only(top: _pokedexController.opacitytitleAppBar == 1 ? 1000: 60 - _pokedexController.opacity * 50),
              ),
            );
          })
        ],
      ),
    );
  }

  final rotation = () => MultiTrackTween([
    Track("rotation").add(
    Duration(seconds: 5), 
    Tween(begin: 0.0, end: 6.0),
    curve: Curves.linear)
  ]);

}