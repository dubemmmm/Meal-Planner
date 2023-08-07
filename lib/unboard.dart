// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project2/login.dart';
//import 'package:project2/profile.dart';

class Elevenscreen extends StatefulWidget {
  const Elevenscreen({super.key});

  @override
  State<Elevenscreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Elevenscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Image.asset("assets/images/Img222.png"),
                    const SizedBox(width: 11),
                    Image.asset("assets/images/Img11.png"),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  "HEALTHY MEAL PLAN WITH EAT HEALTHY",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Just relax and not overthink what to eat.\n This is in our side with our personalized \n meal plans prepared and adapted to \n your needs",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 120),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SecondScreen()),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 45),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF8A47EB),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 20),
                    child: const Text(
                      "GET STARTED",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
