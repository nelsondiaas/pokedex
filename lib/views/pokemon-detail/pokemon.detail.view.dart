import 'package:pokedex/models/pokemon.model.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:pokedex/stores/poke.api.store.dart';
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
  PageController _pageController;
  PokeApiStore _pokeApiStore;
  MultiTrackTween _animation;
  double _opacitytitleAppBar;
  double _progress;
  double _multipli;
  double _opacity;
  
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.index);
    _pokeApiStore = GetIt.instance<PokeApiStore>();
    _animation = rotation();
    _opacitytitleAppBar = 0;
    _progress = 0;
    _multipli = 1;
    _opacity = 1;
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
                  _pokeApiStore.currentPokemon.name,
                  style: TextStyle(
                      fontFamily: 'Google',
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
                opacity: _opacitytitleAppBar,
              ),
              elevation: 0,
              backgroundColor: _pokeApiStore.currentColorPokemon,
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
              return Container(color: _pokeApiStore.currentColorPokemon);
            },
          ),
          Container(height: MediaQuery.of(context).size.height / 3),
          SlidingSheet(
            listener: (state) {
              setState(() {
                _progress = state.progress;
                _multipli = 1 - interval(lower: 0.0, upper: 0.7, progress: _progress);
                _opacity = _multipli;
                _opacitytitleAppBar = _multipli = interval(lower: 0.55, upper: 0.8, progress: _progress);
              });
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
          ),
          Opacity(
              opacity: _opacity,
              child: Padding(
              child: SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _pokeApiStore.setCurrentPokemon(index: index);
                  },
                  itemCount: _pokeApiStore.pokedexModel.pokemon.length,
                  itemBuilder: (BuildContext context, int _index) {
                    PokemonModel _pokemonItem = _pokeApiStore.getPokemon(index: _index);
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
                              child:  _pokeApiStore.getImagePokemon(
                                number: _pokemonItem.num, 
                                width: 160, height: 160, 
                                alignment: Alignment.center
                              ),
                              curve: Curves.bounceInOut,
                              duration: Duration(milliseconds: 400), 
                              padding: EdgeInsets.all(_index == _pokeApiStore.currentPosition ? 0 : 60));
                          }),
                      ]
                    );
                  },
                )),
              padding: EdgeInsets.only(top: _opacitytitleAppBar == 1 ? 1000: 60 - _progress * 50),
            ),
          )
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

  double interval({double lower, double, upper, double progress}) {
    assert(lower < upper);

    if (progress > upper) return 1.0; 
    if (progress < lower) return 0.0;

    return ((progress - lower) / (upper - lower)).clamp(0.0, 1.0);
  }
}