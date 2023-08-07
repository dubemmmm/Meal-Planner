// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.email});
  final String firstName;
  final String lastName;
  final String email;

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    _firstNameController = TextEditingController(text: widget.firstName);
    _lastNameController = TextEditingController(text: widget.lastName);
    _emailController = TextEditingController(text: widget.email);
    super.initState();
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

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
                SizedBox(width: 120),
                Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 50),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/circle1.png"),
              radius: 40,
            ),
            SizedBox(height: 40),
            //Container to change firstname
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextFormField(
                controller: _firstNameController,
                decoration: const InputDecoration(
                  labelText: "FirstName",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Firstname';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 30),
            //Container to change last name
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextFormField(
                controller: _lastNameController,
                decoration: const InputDecoration(
                  labelText: "LastName ",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.person),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Lastname';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 30),
            //Container to change E-mail
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your E-mail';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 120),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF8A47EB),
                  borderRadius: BorderRadius.circular(50),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
                child: const Text(
                  "UPDATE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 245, 244, 244),
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    ));
  }
}
