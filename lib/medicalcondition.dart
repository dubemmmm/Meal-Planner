// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

// import 'package:flutter/material.dart';
// import 'package:project2/displaymealplan.dart';
// import 'package:project2/homepage2.dart';

// class Medicalscreen extends StatefulWidget {
//   const Medicalscreen({
//     super.key,
//   });

//   @override
//   State<Medicalscreen> createState() => _MedicalscreenState();
// }

// class _MedicalscreenState extends State<Medicalscreen> {
//   String? dropdownValue = "Medical Condition";
//   List<DropdownMenuItem<String>> get dropdownItems {
//     List<DropdownMenuItem<String>> menuItems = [
//       const DropdownMenuItem(
//           child: Text("Medical Condition"), value: "Medical Condition"),
//       const DropdownMenuItem(child: Text("None"), value: "None"),
//       const DropdownMenuItem(child: Text("Renal"), value: "Renal"),
//       const DropdownMenuItem(child: Text("Diabetes"), value: "Diabetes"),
//     ];
//     return menuItems;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Placeholder(
//         child: Scaffold(
//           backgroundColor: Colors.white,
//           body: SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Column(
//               children: [
//                 SizedBox(height: 20),
//                 Row(
//                   children: [
//                     SizedBox(width: 10),
//                   ],
//                 ),
//                 SizedBox(height: 40),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: const Color.fromRGBO(238, 238, 238, 1),
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   margin: const EdgeInsets.symmetric(horizontal: 50),
//                   width: double.infinity,
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 35, vertical: 2),
//                   child: DropdownButton<String>(
//                     value: dropdownValue,
//                     items: dropdownItems,
//                     onChanged: (String? newValue) {
//                       // Update the dropdown value when an item is selected
//                       setState(() {
//                         dropdownValue = newValue!;
//                       });
//                     },
//                   ),
//                 ),
//                 SizedBox(height: 300),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (BuildContext context) => Mealplan()),
//                     );
//                   },
//                   child: Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 40),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF8A47EB),
//                         borderRadius: BorderRadius.circular(50),
//                       ),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 13, vertical: 20),
//                       child: const Text(
//                         "GENERATE",
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold),
//                       )),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
