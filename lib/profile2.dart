// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:project2/homepage.dart';

// class ProfileScreen2 extends StatelessWidget {
//   const ProfileScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 2, 1, 2),
//         title: Text('Profile'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 //SizedBox(width: 20),
//                 Image.asset(
//                   "assets/images/circle1.png",
//                   width: 70,
//                 ),
//                 Text(
//                   "Onwuchuluba Chidubem ",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Personal Details',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18.0,
//               ),
//             ),
//             SizedBox(height: 15.0),
//             Text(
//               'Gender:',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Email:',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Age:',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Weight:',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Height:',
//               style: TextStyle(fontSize: 20),
//             ),
//             SizedBox(height: 20.0),
//             Text(
//               'Calorie Requirement',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18.0,
//               ),
//             ),
//             SizedBox(height: 15.0),
//             Text(
//               'Daily Calorie Requirement:',
//               style: TextStyle(fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(items: [
//         BottomNavigationBarItem(
//           icon: GestureDetector(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (BuildContext context) => const Homescreen(

//                     )),
//               );
//             },
//             child: Icon(
//               Icons.home,
//             ),
//           ),
//           label: "Home",
//           backgroundColor: Color(0xFF8A47EB),
//         ),
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.search,
//             ),
//             label: "Search"),
//         BottomNavigationBarItem(
//             icon: GestureDetector(
//               onTap: () {
//                 showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text(
//                           "Excercise ",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         content: Text(
//                             "This functionality is currently not available "),
//                       );
//                     });
//               },
//               child: Icon(
//                 Icons.accessibility,
//               ),
//             ),
//             label: "Exercise"),
//         BottomNavigationBarItem(
//             icon: Icon(
//               Icons.person,
//             ),
//             label: "Profile"),
//       ]),
//     );
//   }
// }
