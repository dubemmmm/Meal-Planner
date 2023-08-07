// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project2/adminhomepage.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
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
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 240,
                     color: const Color(0xFF8A47EB),
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 120,
                          ),
                          Text(
                            "Admin",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 100),
                    //Container for guest username
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(238, 238, 238, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 2),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter your Username",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    //Container for guest password
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(238, 238, 238, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 2),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: "Enter your Password",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    //Container for Logging in as guest
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const SeventhScreen()),
                        );
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
                            "LOGIN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ],
                ),
                // Image.asset("assets/images/shape.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
