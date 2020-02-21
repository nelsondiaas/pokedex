import 'next.evolution.model.dart';
import 'prev.evolution.model.dart';

class PokemonModel {
  int id;
  String num;
  String name;
  String img;
  List<String> type;
  String height;
  String weight;
  String candy;
  String egg;
  List<NextEvolutionModel> nextEvolution;
  List<PrevEvolutionModel> prevEvolution;

  PokemonModel(
      {this.id,
      this.num,
      this.name,
      this.img,
      this.type,
      this.height,
      this.weight,
      this.candy,
      this.egg,
      this.nextEvolution,
      this.prevEvolution});

  PokemonModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    num = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
    height = json['height'];
    weight = json['weight'];
    candy = json['candy'];
    egg = json['egg'];

    if (json['next_evolution'] != null) {
      nextEvolution = new List<NextEvolutionModel>();
      json['next_evolution'].forEach((v) {
        nextEvolution.add(new NextEvolutionModel.fromJson(v));
      });
    }

    if (json['prev_evolution'] != null) {
      prevEvolution = new List<PrevEvolutionModel>();
      json['prev_evolution'].forEach((v) {
        prevEvolution.add(new PrevEvolutionModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['num'] = this.num;
    data['name'] = this.name;
    data['img'] = this.img;
    data['type'] = this.type;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['candy'] = this.candy;
    data['egg'] = this.egg;
    
    if (this.nextEvolution != null) {
      data['next_evolution'] =
          this.nextEvolution.map((v) => v.toJson()).toList();
    }
    if (this.prevEvolution != null) {
      data['prev_evolution'] =
          this.prevEvolution.map((v) => v.toJson()).toList();
    }
    return data;
  }
}