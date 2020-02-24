import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:pokedex/views/pokemon-detail/pokemon.detail.view.dart';
import 'package:pokedex/views/home/widgets/pokemon.item.widget.dart';
import 'package:pokedex/views/home/widgets/app.bar.home.widget.dart';
import 'package:pokedex/controllers/pokedex.controller.dart';
import 'package:pokedex/models/pokemon.model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
  PokedexController _pokedexController;
  
  @override
  void initState() {
    super.initState();
    _pokedexController = GetIt.instance<PokedexController>();
    if (_pokedexController.pokedexModel == null) {
      _pokedexController.fetchPokemonList();
    }
  }

  @override
  Widget build(BuildContext context) {
    
    double _layoutWidth = MediaQuery.of(context).size.width;
    double _statusWidth = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          alignment: Alignment.topCenter,
          overflow: Overflow.visible,
          children: <Widget>[
            Positioned(
              top: -(240/4.7),
              left: _layoutWidth - (240/1.6),
              child: Opacity(
                child: Image.asset('assets/images/pokeball_dark.png', 
                height: 240, 
                width: 240
              ),
              opacity: 0.1
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: _statusWidth,
                ),
                AppBarHomeWidget(),
                Expanded(
                  child: Container(
                    child: Observer(
                      name: 'ListHomeLayout',
                      builder: (BuildContext context) {
                        return (_pokedexController.pokedexModel != null) ?
                        AnimationLimiter(
                          child: GridView.builder(
                            physics: BouncingScrollPhysics(),
                            padding: EdgeInsets.all(12),
                            addAutomaticKeepAlives: true,
                            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                            itemCount: _pokedexController.pokedexModel.pokemon.length,
                            itemBuilder: (context, index) {
                              PokemonModel pokemon = _pokedexController.getPokemon(index: index);
                              return AnimationConfiguration.staggeredGrid(
                                position: index,
                                duration: Duration(milliseconds: 375),
                                columnCount: 2,
                                child: ScaleAnimation(
                                  child: GestureDetector(
                                    child: PokemonItemWidget(
                                      types: pokemon.type,
                                      name: pokemon.name,
                                      index: index,
                                      num: pokemon.num,
                                    ),
                                    onTap: () {
                                      /* current pokemon */
                                      _pokedexController.setCurrentPokemon(index: index);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) => PokemonDetailView(
                                              index: index,
                                            ),
                                            fullscreenDialog: true,
                                        )
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        ): Center(child: CircularProgressIndicator());
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}