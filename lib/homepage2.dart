// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_build_context_synchronously, unused_local_variable, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project2/displaymealplan.dart';
//import 'package:project2/displaymealplan.dart';
//import 'package:project2/homepage.dart';
//import 'package:project2/medicalcondition.dart';
import 'package:project2/models/mealplan/generatemeal.dart';
import 'package:project2/models/mealplan/generatemealresponse.dart';
import 'package:project2/services/authenticationservices.dart';

class EightScreen extends StatefulWidget {
  const EightScreen(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.email});
  final String firstName;
  final String lastName;
  final String email;

  @override
  State<EightScreen> createState() => _EightScreenState();
}

class _EightScreenState extends State<EightScreen> {
  // MealplanResponseModel mealPlan = MealplanResponseModel.fromJson(jsonData);
  final allergyController = TextEditingController();
  Color backgroundColor = Colors.transparent;
  Color backgroundColor1 = Colors.transparent;
  Color backgroundColor2 = Colors.transparent;
  Color backgroundColor3 = Colors.transparent;
  Color backgroundColor4 = Colors.transparent;
  Color backgroundColor5 = Colors.transparent;
  Color backgroundColor6 = Colors.transparent;
  Color backgroundColor7 = Colors.transparent;
  Color backgroundColor8 = Colors.transparent;
  String? dropdownValue = "Medical Condition";

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          child: Text("Medical Condition"), value: "Medical Condition"),
      const DropdownMenuItem(child: Text("None"), value: "None"),
      const DropdownMenuItem(child: Text("Renal"), value: "Renal"),
      const DropdownMenuItem(child: Text("Diabetes"), value: "Diabetes"),
    ];
    return menuItems;
  }

  // String? dropdownValue1 = "Allergy";
  // List<DropdownMenuItem<String>> get dropdownItems1 {
  //   List<DropdownMenuItem<String>> menuItems1 = [
  //     const DropdownMenuItem(child: Text("Allergy"), value: "Allergy"),
  //     const DropdownMenuItem(child: Text("None"), value: "None"),
  //     const DropdownMenuItem(child: Text("Egg"), value: "Egg"),
  //     const DropdownMenuItem(child: Text("Milk"), value: "Milk"),
  //     const DropdownMenuItem(child: Text("Gluten"), value: "Gluten"),
  //     const DropdownMenuItem(child: Text("Fish"), value: "Fish"),
  //   ];
  //   return menuItems1;
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors
                            .black, // Customize the color of the icon if needed
                      ),
                    ),
                    SizedBox(width: 60),
                    Text(
                      "Any Ingredient Allergies?",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "We offer you the best diet tailored experience \n we need to know more information \n about you ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        //color: const Color(0xF5F5F5),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Milk",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                        //color: const Color(0xF5F5F5),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Egg",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                        //color: const Color(0xF5F5F5),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Fish",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                        //color: const Color(0xF5F5F5),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "None",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(238, 238, 238, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 55, vertical: 2),
                  child: TextFormField(
                    controller: allergyController,
                    decoration: const InputDecoration(
                      labelText: "Allergy",
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an allergy';
                      }
                      return null;
                    },
                  ),
                ),
                // DropdownButton<String>(
                //   value: dropdownValue1,
                //   items: dropdownItems1,
                //   onChanged: (String? newValue1) {
                //     // Update the dropdown value when an item is selected
                //     setState(() {
                //       dropdownValue = newValue1!;
                //     });
                //   },
                // ),

                SizedBox(height: 50),
                Text(
                  "Any Medical Conditions?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(238, 238, 238, 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 70),
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 55, vertical: 2),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    items: dropdownItems,
                    onChanged: (String? newValue) {
                      // Update the dropdown value when an item is selected
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 190),
                GestureDetector(
                  onTap: () async {
                    var apiResponse = await mealplan(
                        allergyController.text,
                        dropdownValue!,
                        MealplanRequestModel(
                            allergy: allergyController.text,
                            medicalCondition: dropdownValue!));
                    if (apiResponse!.status == "UnSuccessful") {
                      print("UnSuccessful");
                    } else {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const CircularProgressIndicator(),
                                  const SizedBox(height: 10),
                                  const Text('Generating...'),
                                ],
                              ),
                            );
                          });
                      await Future.delayed(const Duration(seconds: 3));
                      Navigator.pop(context);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Success"),
                              content:
                                  const Text('Meal plan has been generated.'),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    var mealPlan = mealplanResponseModelFromJson(
                                        json.encode(apiResponse
                                            .data));                                     Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Mealplan(
                                                mealPlan: mealPlan,
                                                selectedDisease:
                                                    dropdownValue!),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          });
                      print("meal plan has ben generated");
                      var mealPlan = mealplanResponseModelFromJson(
                          json.encode(apiResponse.data));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Mealplan(
                                mealPlan: mealPlan,
                                selectedDisease: dropdownValue!)),
                      );
                    }
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8A47EB),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 20),
                      child: const Text(
                        "GENERATE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
