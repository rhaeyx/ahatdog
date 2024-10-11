import 'package:flutter/material.dart';

import 'button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 246, 250, 1),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon/icon.png",
              width: 100,
              height: 100,
            ),
            const Text(
              "Welcome",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Button(
              text: "Sign In",
              onPressed: () {
                Navigator.pushNamed(context, '/signin');
              },
              textColor: Colors.white,
            ),
            const SizedBox(height: 20),
            Button(
              text: "Sign Up",
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              color: Colors.white,
              textColor: Colors.black,
            )
          ],
        )));
  }
}
