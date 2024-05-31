class TestingModel {
  String? name;
  String? age;
  TestingModel({this.age, this.name});
  TestingModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }
  Map<String, dynamic> toJson() {
    return {
      'name':name,
      'age':age,
    };
  }
}
