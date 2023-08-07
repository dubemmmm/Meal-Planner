// To parse this JSON data, do
//
//     final apiResponse = apiResponseFromJson(jsonString);

import 'dart:convert';

ApiResponse apiResponseFromJson(String str) =>
    ApiResponse.fromJson(json.decode(str));

String apiResponseToJson(ApiResponse data) => json.encode(data.toJson());

class ApiResponse {
  int code;
  String message;
  dynamic data;
  String status;

  ApiResponse({
    required this.code,
    required this.message,
    this.data,
    required this.status,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
        code: json["code"],
        message: json["message"],
        data: json["data"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data,
        "status": status,
      };
}
