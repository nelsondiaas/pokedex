import 'package:pokedex/views/home/widgets/app.bar.home.widget.dart';
import 'package:pokedex/stores/poke.api.store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  
  PokeApiStore _pokeApiStore;
  
  @override
  void initState() {
    super.initState();
    _pokeApiStore = GetIt.instance<PokeApiStore>();
    if (_pokeApiStore.pokedexModel == null) {
      _pokeApiStore.fetchPokemonList();
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
                        return (_pokeApiStore.pokedexModel != null) ?
                        ListView.builder(
                          itemCount: _pokeApiStore.pokedexModel.pokemon.length,
                          itemBuilder: (context, index) {
                          return ListTile(
                              title: Text(_pokeApiStore.pokedexModel.pokemon[index].name),
                            );
                          },
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