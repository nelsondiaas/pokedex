import 'package:pokedex/repositories/pokedex.repository.dart';
import 'package:pokedex/models/pokedex.model.dart';


class PokeApiController {

  PokedexRepository _pokedexRepository;
  
  PokeApiController() {
    _pokedexRepository = new PokedexRepository();
  }

  Future<PokedexModel> openPokedex() async {
    try {
      return await _pokedexRepository.getAll();
    } catch (error, stacktrace) {
       print("Error when loading the list" + stacktrace.toString());
       return null;
    }
  }
}