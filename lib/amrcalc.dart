// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project2/login.dart';

class SixthScreen extends StatefulWidget {
  const SixthScreen(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.email});

  final String firstName;
  final String lastName;
  final String email;

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  //ask dele how to do this such that when tapped, this is set to either noexercise, light moderate or heavy
  //TextEditingController _amrController = TextEditingController();
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Image.asset("assets/images/shape.png"),
                //const SizedBox(height: 5),
                Column(
                  children: [
                    const SizedBox(height: 150),
                    const Text(
                      "ACTIVITY LEVEL",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SvgPicture.asset("assets/images/physicalactivity.svg"),
                    const SizedBox(height: 30),
                    // const SizedBox(height: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Container for No excercise
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected1 = !isSelected1;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected1
                                      ? const Color(0xFF8A47EB)
                                      : Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: const Text(
                                "No Excercise",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          //Container for Light Excercise
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected2 = !isSelected2;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected2
                                      ? const Color(0xFF8A47EB)
                                      : Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              child: const Text(
                                "Light ",
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
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Container for Moderate Excercise
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected3 = !isSelected3;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected3
                                      ? const Color(0xFF8A47EB)
                                      : Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 20),
                              child: const Text(
                                "Moderate      ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),

                          //Container for Hard Excercise
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected4 = !isSelected4;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: isSelected4
                                      ? const Color(0xFF8A47EB)
                                      : Colors.grey,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 20),
                              child: const Text(
                                "Hard  ",
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
                          // Show loading screen
                          showDialog(
                            context: context,
                            barrierDismissible:
                                false, // Prevent dismissing the dialog by tapping outside
                            builder: (BuildContext context) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          );

                          // Simulate asynchronous operation
                          Future.delayed(const Duration(seconds: 2), () {
                            // Close loading screen
                            Navigator.pop(context);

                            // Show success dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Success'),
                                  content: const Text(
                                      'Account has been Successfully Created'),
                                  actions: [
                                    TextButton(
                                      child: const Text('OK'),
                                      onPressed: () {
                                        Navigator.pop(
                                            context); // Close success dialog
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SecondScreen(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          });
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
