// To parse this JSON data, do
//
//     final mealplanRequestModel = mealplanRequestModelFromJson(jsonString);

import 'dart:convert';

MealplanRequestModel mealplanRequestModelFromJson(String str) => MealplanRequestModel.fromJson(json.decode(str));

String mealplanRequestModelToJson(MealplanRequestModel data) => json.encode(data.toJson());

class MealplanRequestModel {
    String allergy;
    String medicalCondition;

    MealplanRequestModel({
        required this.allergy,
        required this.medicalCondition,
    });

    factory MealplanRequestModel.fromJson(Map<String, dynamic> json) => MealplanRequestModel(
        allergy: json["allergy"],
        medicalCondition: json["medicalCondition"],
    );

    Map<String, dynamic> toJson() => {
        "allergy": allergy,
        "medicalCondition": medicalCondition,
    };
}
