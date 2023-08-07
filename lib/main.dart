// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project2/unboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Project app",
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String text = 'EAT';

  @override
  void initState() {
    super.initState();
    startTimer();
    startTimer2();
  }

  void startTimer() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        text = 'EAT HEALTHY ';
      });
    });
  }

  void startTimer2() {
    Timer(Duration(seconds: 3), () {
      navigateToNewPage();
    });
  }

  void navigateToNewPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Elevenscreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
          child: Text(
            text,
            key: ValueKey<String>(text),
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
