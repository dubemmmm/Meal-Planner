// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project2/homepage2.dart';
import 'package:project2/profile.dart';

//import 'displaymealplan.dart';
//import 'package:project2/profile.dart';
//import 'package:project2/profile2.dart';

class Homescreen extends StatefulWidget {
  const Homescreen(
      {super.key,
      required this.firstName,
      required this.lastName,
      required this.email});
  final String firstName;
  final String lastName;
  final String email;

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {}

  @override
  Widget build(BuildContext context) {
    List<Widget> navPages = [
      MainHome(),
      Profilescreen(
        email: widget.email,
        firstName: widget.firstName,
        lastName: widget.lastName,
      ),
      //Mealplan(mealPlan: null,),
    ];
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: onPageChanged,
            children: navPages,
          ),
          bottomNavigationBar: BottomNavigationBar(currentIndex: _page, items: [
            //navigator for home page
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _page = 0;
                  });
                  pageController.jumpToPage(0);
                },
                child: Icon(
                  Icons.home,
                  //color: Colors.black,
                ),
              ),
              label: "home",
              backgroundColor: Color.fromARGB(255, 9, 6, 11),
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              "Excercise ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            content: Text(
                                "This functionality is currently not available "),
                          );
                        });
                  },
                  child: Icon(Icons.accessibility)),
              label: "Excercise",
            ),
            //navigator for exercise :: to be
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _page = 2;
                  });
                  pageController.jumpToPage(1);
                },
                child: Icon(Icons.person),
              ),
              label: "profile",
            ),
            //navigator for profile
            BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _page = 3;
                    });
                    pageController.jumpToPage(2);
                  },
                  child: Icon(Icons.food_bank)),
              label: "mealplan",
            ),
          ]),
        ),
      ),
    );
  }
}

class MainHome extends StatelessWidget {
  const MainHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/circle1.png"),
              radius: 35,
            ),
            SizedBox(width: 10),
            Text(
              "HELLO USER!",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 144, 141, 149),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "All  ",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 20),
            Container(
              decoration: BoxDecoration(
                //color: const Color(0xF5F5F5),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Breakfast",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 20),
            Container(
              decoration: BoxDecoration(
                //color: const Color(0xF5F5F5),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Lunch  ",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(width: 20),
            Container(
              decoration: BoxDecoration(
                //color: const Color(0xF5F5F5),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "Dinner",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            SizedBox(width: 10),
            Text(
              "Variety of Meals",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/breakfast1.png",
                      width: 180,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      "Waffles",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/lunch1.png",
                      width: 170,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      "Macaroni",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/dinner1.png",
                      width: 170,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      "Salad",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    Image.asset(
                      "assets/images/yamwegg1.png",
                      width: 200,
                      //height: 200,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(
                      "Yam with Egg Sauce",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
        ),
        SizedBox(height: 25),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const EightScreen(
                        email: '',
                        firstName: '',
                        lastName: '',
                      )),
            );
          },
          child: Image.asset("assets/images/creatediet.png"),
        ),
      ],
    );
  }
}
