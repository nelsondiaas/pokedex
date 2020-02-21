class PrevEvolutionModel {
  String num;
  String name;

  PrevEvolutionModel({this.num, this.name});

  PrevEvolutionModel.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.num;
    data['name'] = this.name;
    return data;
  }
}