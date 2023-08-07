// To parse this JSON data, do
//
//     final mealplanResponseModel = mealplanResponseModelFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

import 'realFoodItem.dart';

MealplanResponseModel mealplanResponseModelFromJson(String str) => MealplanResponseModel.fromJson(json.decode(str));

String mealplanResponseModelToJson(MealplanResponseModel data) => json.encode(data.toJson());

class MealplanResponseModel {
    List<Realfooditem> breakfasts;
    List<Realfooditem> lunches;
    List<Realfooditem> dinners;

    MealplanResponseModel({
        required this.breakfasts,
        required this.lunches,
        required this.dinners,
    });

    factory MealplanResponseModel.fromJson(Map<String, dynamic> json) => MealplanResponseModel(
        breakfasts: List<Realfooditem>.from(json["breakfasts"].map((x) => Realfooditem.fromJson(x))),
        lunches: List<Realfooditem>.from(json["lunches"].map((x) => Realfooditem.fromJson(x))),
        dinners: List<Realfooditem>.from(json["dinners"].map((x) => Realfooditem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "breakfasts": List<dynamic>.from(breakfasts.map((x) => x.toJson())),
        "lunches": List<dynamic>.from(lunches.map((x) => x.toJson())),
        "dinners": List<dynamic>.from(dinners.map((x) => x.toJson())),
    };
}

// class Realfooditem {
//     int id;
//     String name;
//     int quantity;
//     Class breakfastClass;
//     int caloricalValue;
//     int glycemicIndex;
//     int carbohydrate;
//     int protein;
//     int fiber;
//     double sugar;
//     int giScore;
//     int nutrientScore;
//     int proteinScore;
//     double weightedGiScore;
//     double weightedNutrientScore;
//     double sum;
//     double weightedProteinScore;
//     double sumP;
//     double sumN;
//     FoodType foodType;

//     Realfooditem({
//         required this.id,
//         required this.name,
//         required this.quantity,
//         required this.breakfastClass,
//         required this.caloricalValue,
//         required this.glycemicIndex,
//         required this.carbohydrate,
//         required this.protein,
//         required this.fiber,
//         required this.sugar,
//         required this.giScore,
//         required this.nutrientScore,
//         required this.proteinScore,
//         required this.weightedGiScore,
//         required this.weightedNutrientScore,
//         required this.sum,
//         required this.weightedProteinScore,
//         required this.sumP,
//         required this.sumN,
//         required this.foodType,
//     });

//     factory Realfooditem.fromJson(Map<String, dynamic> json) => Realfooditem(
//         id: json["id"],
//         name: json["name"],
//         quantity: json["quantity"],
//         breakfastClass: classValues.map[json["class"]]!,
//         caloricalValue: json["caloricalValue"],
//         glycemicIndex: json["glycemicIndex"],
//         carbohydrate: json["carbohydrate"],
//         protein: json["protein"],
//         fiber: json["fiber"],
//         sugar: json["sugar"]?.toDouble(),
//         giScore: json["giScore"],
//         nutrientScore: json["nutrientScore"],
//         proteinScore: json["proteinScore"],
//         weightedGiScore: json["weightedGIScore"]?.toDouble(),
//         weightedNutrientScore: json["weightedNutrientScore"]?.toDouble(),
//         sum: json["sum"]?.toDouble(),
//         weightedProteinScore: json["weightedProteinScore"]?.toDouble(),
//         sumP: json["sumP"]?.toDouble(),
//         sumN: json["sumN"]?.toDouble(),
//         foodType: foodTypeValues.map[json["foodType"]]!,
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "quantity": quantity,
//         "class": classValues.reverse[breakfastClass],
//         "caloricalValue": caloricalValue,
//         "glycemicIndex": glycemicIndex,
//         "carbohydrate": carbohydrate,
//         "protein": protein,
//         "fiber": fiber,
//         "sugar": sugar,
//         "giScore": giScore,
//         "nutrientScore": nutrientScore,
//         "proteinScore": proteinScore,
//         "weightedGIScore": weightedGiScore,
//         "weightedNutrientScore": weightedNutrientScore,
//         "sum": sum,
//         "weightedProteinScore": weightedProteinScore,
//         "sumP": sumP,
//         "sumN": sumN,
//         "foodType": foodTypeValues.reverse[foodType],
//     };
// }

enum Class { A }

final classValues = EnumValues({
    "A": Class.A
});

enum FoodType { BREAKFAST, DINNER, LUNCH }

final foodTypeValues = EnumValues({
    "Breakfast": FoodType.BREAKFAST,
    "Dinner": FoodType.DINNER,
    "Lunch": FoodType.LUNCH
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
