// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
    String email;
    String accessToken;
    String tokenType;
    DateTime expiresIn;

    LoginResponseModel({
        required this.email,
        required this.accessToken,
        required this.tokenType,
        required this.expiresIn,
    });

    factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
        email: json["email"],
        accessToken: json["accessToken"],
        tokenType: json["tokenType"],
        expiresIn: DateTime.parse(json["expiresIn"]),
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "accessToken": accessToken,
        "tokenType": tokenType,
        "expiresIn": expiresIn.toIso8601String(),
    };
}
