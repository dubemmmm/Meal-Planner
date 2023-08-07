// To parse this JSON data, do
//
//     final amrModel = amrModelFromJson(jsonString);

import 'dart:convert';

AmrModel amrModelFromJson(String str) => AmrModel.fromJson(json.decode(str));

String amrModelToJson(AmrModel data) => json.encode(data.toJson());

class AmrModel {
    String activityLevel;

    AmrModel({
        required this.activityLevel,
    });

    factory AmrModel.fromJson(Map<String, dynamic> json) => AmrModel(
        activityLevel: json["activityLevel"],
    );

    Map<String, dynamic> toJson() => {
        "activityLevel": activityLevel,
    };
}
