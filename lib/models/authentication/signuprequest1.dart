// To parse this JSON data, do
//
//     final signupRequest = signupRequestFromJson(jsonString);

import 'dart:convert';

SignupRequest signupRequestFromJson(String str) => SignupRequest.fromJson(json.decode(str));

String signupRequestToJson(SignupRequest data) => json.encode(data.toJson());

class SignupRequest {
    int code;
    String message;
    Data data;
    String status;

    SignupRequest({
        required this.code,
        required this.message,
        required this.data,
        required this.status,
    });

    factory SignupRequest.fromJson(Map<String, dynamic> json) => SignupRequest(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data.toJson(),
        "status": status,
    };
}

class Data {
    String firstName;
    String lastName;
    String email;
    int bmr;
    int amr;

    Data({
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.bmr,
        required this.amr,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        bmr: json["bmr"],
        amr: json["amr"],
    );

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "bmr": bmr,
        "amr": amr,
    };
}
