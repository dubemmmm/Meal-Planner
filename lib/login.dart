// ignore_for_file: unnecessary_const, prefer_const_constructors, use_build_context_synchronously, avoid_print, non_constant_identifier_names, prefer_const_literals_to_create_immutables, unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project2/ForgotPass.dart';
import 'package:project2/adminlogin.dart';
import 'package:project2/createaccount.dart';
import 'package:project2/homepage.dart';
//import 'package:project2/models/apiresponse/apiresponse.dart';
import 'package:project2/models/authentication/loginrequest.dart';
import 'package:project2/models/authentication/loginresponse.dart';
import 'dart:core';

import 'package:project2/services/authenticationservices.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool isVisible = false;
  bool isLoading = false;
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Stack(
              children: [
                Image.asset("assets/images/shape.png"),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 130),
                      const Text(
                        "Welcome back!",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),

                      SvgPicture.asset("assets/images/login1.svg"),
                      const SizedBox(height: 30),

                      //Container for username
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(238, 238, 238, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 2),
                        child: TextFormField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                            labelText: "E-mail",
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Email';
                            }
                            final emailRegex = RegExp(
                              r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$',
                            );
                            if (!emailRegex.hasMatch(value)) {
                              return 'Enter a valid Email address';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 40),
                      //Container for Password
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(238, 238, 238, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 2),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: !isVisible,
                          decoration: InputDecoration(
                              labelText: "Password",
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isVisible = !isVisible;
                                    });
                                  },
                                  icon: !isVisible
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off))),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Password';
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const ThirdScreen()),
                          );
                        },
                        child: const Text(
                          "Forgot password?",
                          style: TextStyle(
                            color: const Color(0xFF8A47EB),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            var apiResponse = await login(LoginModel(
                              email: usernameController.text,
                              password: passwordController.text,
                            ));
                            if (apiResponse!.status == "UnSuccessful") {
                              print("unsuccessful");
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Login Failed'),
                                    content: Text(
                                        'Invalid username or password. Please try again.'),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                              return;
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
                                          const Text('Logging in...'),
                                        ],
                                      ),
                                    );
                                  });
                              await Future.delayed(const Duration(seconds: 2));
                              Navigator.pop(context);
                              print("successful");

                              var LoginResModel = loginResponseModelFromJson(
                                  json.encode(apiResponse.data));
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Homescreen(
                                        email: 'dubem@gmail.com',
                                        firstName: 'chidubem',
                                        lastName: 'onwuchuluba',
                                      )),
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
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const SizedBox(width: 90),
                          const Text("Don't have an account? "),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const CreateAccount()),
                              );
                            },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 140),
                          const Text(
                            "Login as ",
                          ),
                          const SizedBox(width: 1),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const FifthScreen()),
                              );
                            },
                            child: const Text(
                              "ADMIN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
