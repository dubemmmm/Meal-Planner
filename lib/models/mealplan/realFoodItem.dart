// To parse this JSON data, do
//
//     final realfooditem = realfooditemFromJson(jsonString);

import 'dart:convert';

Realfooditem realfooditemFromJson(String str) =>
    Realfooditem.fromJson(json.decode(str));

String realfooditemToJson(Realfooditem data) => json.encode(data.toJson());

class Realfooditem {
  int id;
  String name;
  int quantity;
  String realfooditemClass;
  int caloricalValue;
  int glycemicIndex;
  int carbohydrate;
  int protein;
  int fiber;
  double sugar;
  int giScore;
  int nutrientScore;
  int proteinScore;
  double weightedGiScore;
  double weightedNutrientScore;
  double sum;
  double weightedProteinScore;
  double sumP;
  double sumN;
  String foodType;

  Realfooditem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.realfooditemClass,
    required this.caloricalValue,
    required this.glycemicIndex,
    required this.carbohydrate,
    required this.protein,
    required this.fiber,
    required this.sugar,
    required this.giScore,
    required this.nutrientScore,
    required this.proteinScore,
    required this.weightedGiScore,
    required this.weightedNutrientScore,
    required this.sum,
    required this.weightedProteinScore,
    required this.sumP,
    required this.sumN,
    required this.foodType,
  });

  factory Realfooditem.fromJson(Map<String, dynamic> json) => Realfooditem(
        id: json["id"],
        name: json["name"],
        quantity: json["quantity"],
        realfooditemClass: json["class"],
        caloricalValue: json["caloricalValue"],
        glycemicIndex: json["glycemicIndex"],
        carbohydrate: json["carbohydrate"],
        protein: json["protein"],
        fiber: json["fiber"],
        sugar: json["sugar"]?.toDouble(),
        giScore: json["giScore"],
        nutrientScore: json["nutrientScore"],
        proteinScore: json["proteinScore"],
        weightedGiScore: json["weightedGIScore"]?.toDouble(),
        weightedNutrientScore: json["weightedNutrientScore"]?.toDouble(),
        sum: json["sum"]?.toDouble(),
        weightedProteinScore: json["weightedProteinScore"]?.toDouble(),
        sumP: json["sumP"]?.toDouble(),
        sumN: json["sumN"]?.toDouble(),
        foodType: json["foodType"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "quantity": quantity,
        "class": realfooditemClass,
        "caloricalValue": caloricalValue,
        "glycemicIndex": glycemicIndex,
        "carbohydrate": carbohydrate,
        "protein": protein,
        "fiber": fiber,
        "sugar": sugar,
        "giScore": giScore,
        "nutrientScore": nutrientScore,
        "proteinScore": proteinScore,
        "weightedGIScore": weightedGiScore,
        "weightedNutrientScore": weightedNutrientScore,
        "sum": sum,
        "weightedProteinScore": weightedProteinScore,
        "sumP": sumP,
        "sumN": sumN,
        "foodType": foodType,
      };
}
