import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(children: [
                Row(
                  children: [
                    Image.asset("assets/images/shape.png"),
                  ],
                ),
                SvgPicture.asset("assets/images/forgotpass.svg"),
                const SizedBox(height: 20),
                const Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text("Enter the E-Mail associated with this account"),
                const SizedBox(height: 50),
                //Container for Email
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(238, 238, 238, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Enter your E=mail",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                //Container for Reset Password
                Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF8A47EB),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 20),
                    child: const Text(
                      "RESET PASSWORD",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
