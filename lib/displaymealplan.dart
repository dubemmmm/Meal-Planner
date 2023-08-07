// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:project2/models/mealplan/generatemealresponse.dart';

import 'package:project2/nutritioncontent.dart';
class Mealplan extends StatefulWidget {
  final MealplanResponseModel mealPlan;
  final String selectedDisease;
  var firstName;

  var lastName;

  var email;

  Mealplan({super.key, required this.mealPlan, required this.selectedDisease});

  @override
  // ignore: no_logic_in_create_state
  State<Mealplan> createState() => _MealplanState(mealPlan);
}

class _MealplanState extends State<Mealplan> {
  late final MealplanResponseModel mealPlan;

  _MealplanState(this.mealPlan);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Table(
                columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(1),
                },
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    TableCell(child: Text('Day')),
                    TableCell(
                        child: Text(
                      'Breakfast',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: Text(
                      'Lunch',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: Text(
                      'Dinner',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Sunday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                      child: GestureDetector(
                        onTap: () async {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  NutrititonScreen(
                                realFood: mealPlan.breakfasts[0],
                                selectedDisease: widget.selectedDisease,
                              ),
                            ),
                          );
                        },
                        child: Text(mealPlan.breakfasts[0].name),
                      ),
                    ),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.lunches[0],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.lunches[0].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.dinners[0],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.dinners[0].name))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Monday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.breakfasts[1],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.breakfasts[1].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.lunches[1],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.lunches[1].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.dinners[1],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.dinners[1].name))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Tuesday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NutrititonScreen(
                                    realFood: mealPlan.breakfasts[2],
                                    selectedDisease: widget.selectedDisease,
                                  ),
                                ),
                              );
                            },
                            child: Text(mealPlan.breakfasts[2].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NutrititonScreen(
                                    realFood: mealPlan.lunches[2],
                                    selectedDisease: widget.selectedDisease,
                                  ),
                                ),
                              );
                            },
                            child: Text(mealPlan.lunches[2].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      NutrititonScreen(
                                    realFood: mealPlan.dinners[2],
                                    selectedDisease: widget.selectedDisease,
                                  ),
                                ),
                              );
                            },
                            child: Text(mealPlan.dinners[2].name))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Wednesday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.breakfasts[3],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.breakfasts[3].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.lunches[3],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.lunches[3].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.dinners[3],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.dinners[3].name))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Thursday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.breakfasts[4],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.breakfasts[4].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.lunches[4],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.lunches[4].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.dinners[4],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.dinners[4].name))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Friday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.breakfasts[5],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.breakfasts[5].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.lunches[5],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.lunches[5].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.dinners[5],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.dinners[5].name))),
                  ]),
                  TableRow(children: [
                    TableCell(
                        child: Text(
                      'Saturday',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.breakfasts[6],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.breakfasts[6].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.lunches[6],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.lunches[6].name))),
                    TableCell(
                        child: GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NutrititonScreen(
                                          realFood: mealPlan.dinners[6],
                                          selectedDisease:
                                              widget.selectedDisease,
                                        )),
                              );
                            },
                            child: Text(mealPlan.dinners[6].name))),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
