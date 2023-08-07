// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_cast

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project2/amrcalc.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.email});

  final String firstName;
  final String lastName;
  final String email;

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  String? gender;
  final listOfGenders = [
    'Male',
    'Female',
  ];
  // String? dropdownValue = "Select One";

  // List<DropdownMenuItem<String>> get dropdownItems {
  //   List<DropdownMenuItem<String>> menuItems = [
  //     const DropdownMenuItem(child: Text("Select One"), value: "Select One"),
  //     const DropdownMenuItem(child: Text("Male"), value: "Male"),
  //     const DropdownMenuItem(child: Text("Female"), value: "Female"),
  //   ];
  //   return menuItems;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Stack(
              children: [
                Image.asset("assets/images/shape.png"),
                //const SizedBox(height: 30),
                Column(
                  children: [
                    const SizedBox(height: 130),
                    SvgPicture.asset("assets/images/biodata.svg"),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Container for Gender
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ), /*
                            child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                  labelText: "Gender",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null) {
                                    return "please enter a gender";
                                  }
                                  return null;
                                },
                                items: [
                                  DropdownMenuItem(
                                    child: Text("male"),
                                    value: "male",
                                  ),
                                  DropdownMenuItem(
                                      child: Text("female"), value: "female"),
                                ],
                                value: gender,
                                onChanged: (value) {
                                  setState(() {
                                    gender = value as String?;
                                  });
                                }),*/
                          ),

                          //Container for Age
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            // padding: const EdgeInsets.symmetric(
                            //     horizontal: 15, vertical: 2),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: "     Age",
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Container for height
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 2),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Height (cm)",
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          //Container for Age
                          Container(
                            width: 150,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 2),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: "Weight (kg)",
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 45),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF8A47EB),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => SixthScreen(
                                      email: widget.email,
                                      firstName: widget.firstName,
                                      lastName: widget.lastName,
                                    )),
                          );
                        },
                        child: const Text(
                          "CALCULATE",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
