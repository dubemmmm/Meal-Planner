// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
//import 'dart:io';
//import 'dart:convert';
//import 'package:flutter/material.dart';

import 'package:project2/models/apiresponse/apiresponse.dart';
import 'package:project2/models/authentication/amrcalc.dart';
import 'package:project2/models/authentication/bmrcalc.dart';
import 'package:project2/models/authentication/loginrequest.dart';

import 'package:project2/models/authentication/signuprequest1.dart';
import 'package:project2/models/mealplan/generatemeal.dart';

Map<String, String> headers = {
  'Content-Type': 'application/json',
};

Map<String, String> authorizedHeaders = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer',
};
//Login service
Future<ApiResponse?> login(LoginModel model) async {
  const String url =
      "http://chidubem-001-site1.atempurl.com/Authentication/api/v1/Login";
  try {
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: loginModelToJson(model),
    );
    print(response.body);
    var res = apiResponseFromJson(response.body);
    return res;
  } catch (e) {
    print(e);
    return null;
  }
}

//sign up service
Future<ApiResponse?> signup(SignupRequest model) async {
  const String url =
      "http://chidubem-001-site1.atempurl.com/Authentication/api/v1/SignUp";
  try {
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: signupRequestToJson(model),
    );
    print(response.body);
    var res = apiResponseFromJson(response.body);
    return res;
  } catch (e) {
    print(e);
    return null;
  }
}

// calculate bmr
Future<ApiResponse?> bmrcal(BmrModel model) async {
  const String url = "http://chidubem-001-site1.atempurl.com/User/api/v1/bmr";
  try {
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: bmrModelToJson(model),
    );
    print(response.body);
    var res = apiResponseFromJson(response.body);
    return res;
  } catch (e) {
    print(e);
    return null;
  }
}

//calculate amr, ask if the service for this one should change because it is accepting bmr as input
Future<ApiResponse?> amrcal(AmrModel model) async {
  const String url = "http://chidubem-001-site1.atempurl.com/User/api/v1/amr";
  try {
    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: amrModelToJson(model),
    );
    print(response.body);
    var res = apiResponseFromJson(response.body);
    return res;
  } catch (e) {
    print(e);
    return null;
  }
}

Future<ApiResponse?> mealplan(String allergy, String medicalCondition, MealplanRequestModel model) async {
  //find out if the url string is okay
  const String url =
      "http://chidubem-001-site1.atempurl.com/User/api/v1/generateMealPlan";
       Map<String, String?> queryParams = {
        "allergy": allergy,
        "medicalCondition": medicalCondition,
  };
  String queryString = Uri(queryParameters: queryParams).query;

      try{
        var response=await http.post(
           Uri.parse("$url?$queryString"),
          headers: headers,
          body: mealplanRequestModelToJson(model),
        );
        print(response.body);
        var res = apiResponseFromJson(response.body);
        return res;
        }
        catch(e){
          print(e);
        return null;
        }
      }


// class LoginService {
//   static const String url =
//       "http://chidubem-001-site1.atempurl.com/Authentication/api/v1/Login";

//   static Future<apiresponse?> login(LoginModel model) async {
//     try {
//       var response = await http.post(
//         Uri.parse(url),
//         headers: headers,
//         body: loginModelToJson(model),
//       );
//       print(response.body);
//       var res = apiResponseFromJson(response.body);
//       return res;
//     } catch (e) {
//       print(e);
//       return null;
//     }
//   }
// }
