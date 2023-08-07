// To parse this JSON data, do
//
//     final bmrModel = bmrModelFromJson(jsonString);

import 'dart:convert';

BmrModel bmrModelFromJson(String str) => BmrModel.fromJson(json.decode(str));

String bmrModelToJson(BmrModel data) => json.encode(data.toJson());

class BmrModel {
  int age;
  int height;
  int weight;
  String gender;

  BmrModel({
    required this.age,
    required this.height,
    required this.weight,
    required this.gender,
  });

  factory BmrModel.fromJson(Map<String, dynamic> json) => BmrModel(
        age: json["age"],
        height: json["height"],
        weight: json["weight"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "height": height,
        "weight": weight,
        "gender": gender,
      };
}
