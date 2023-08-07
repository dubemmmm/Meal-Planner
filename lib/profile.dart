// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project2/editprofile.dart';
import 'package:project2/faqs.dart';
import 'package:project2/login.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.email});
  final String firstName;
  final String lastName;
  final String email;

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 10),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.pop(context);
                //   },
                //   child: Icon(
                //     Icons.arrow_back,
                //     color: Colors
                //         .black, // Customize the color of the icon if needed
                //   ),
                // ),
                SizedBox(width: 130),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/circle1.png"),
                  radius: 35,
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
                child: Text(
              "Onwuchuluba Chidubem",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            Center(
                child: Text(
              "lifeofchris14@gmail.com",
              style: TextStyle(color: Colors.grey),
            )),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => MyWidget(
                            email: widget.email,
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                          )),
                );
              },
              child: const Text(
                "Edit Profile",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            //container for privacy
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                children: [
                  Icon(Icons.privacy_tip),
                  const SizedBox(width: 10),
                  Text(
                    "Privacy",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            //Container for FAQs
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => FAQScreen(),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(238, 238, 238, 1),
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Row(
                  children: [
                    Icon(Icons.question_answer),
                    const SizedBox(width: 10),
                    Text(
                      "FAQs",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            //Container for settings
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 40),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Row(
                children: [
                  Icon(Icons.settings),
                  const SizedBox(width: 10),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            //container for log out
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SecondScreen()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(238, 238, 238, 1),
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    const SizedBox(width: 10),
                    Text(
                      "Log out",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
