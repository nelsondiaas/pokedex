import 'package:flutter/material.dart';
import 'package:pokedex/consts/consts.api.dart';


class PokemonItemWidget extends StatelessWidget {

  final String name;
  final int index;
  final String color;
  final Widget image;
  final List<String> types;

  PokemonItemWidget({Key key, this.name, this.index, this.color, this.image, this.types}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            //alignment: Alignment.bottomRight,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(
                      name,
                      style: TextStyle(
                          fontFamily: 'Google',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: setTypes(),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Hero(
                    child: Opacity(
                    child: Image.asset('assets/images/pokeball_white.png',
                      height: 80,
                      width: 80,
                    ),
                    opacity: 0.2,
                  ), tag: index.toString(),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: image
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: ConstsApi.getColorType(type: types[0]),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget setTypes() {
    List<Widget> lista = [];
    types.forEach((nome) {
      lista.add(
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(80, 255, 255, 255)),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(
                  nome.trim(),
                  style: TextStyle(
                      fontFamily: 'Google',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      );
    });
    return Column(
      children: lista,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}