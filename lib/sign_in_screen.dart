import 'package:cs3midlogin/labeled_input_box.dart';
import 'package:flutter/material.dart';

import 'button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 232, 234, 1),
        body: Column(
          children: [
            Container(
              width: screenWidth,
              height: 160,
              decoration: const BoxDecoration(
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60.0), // Set
                  )),
              padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
              child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome!",
                      style: TextStyle(fontSize: 28, color: Colors.blueAccent),
                    ),
                    Text("Sign in and get started."),
                  ]),
            ),
            const SizedBox(height: 40),
            Container(
              width: 0.75 * screenWidth,
              child: Column(
                children: [
                  LabeledInputBox(
                    label: "Email",
                    controller: _emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LabeledInputBox(
                    label: "Password",
                    controller: _passwordController,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Button(
                      text: "Sign In",
                      onPressed: () =>
                          {Navigator.pushNamed(context, "/products")}),
                  const SizedBox(height: 30),
                  Text(
                    "Forgot Password",
                    style: TextStyle(color: Colors.blue[300]),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () => {Navigator.pushNamed(context, "/")},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Rounded corners
                            )),
                        child: Image.asset(
                          "assets/images/f.png",
                          width: 36,
                          height: 36,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => {Navigator.pushNamed(context, "/")},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Rounded corners
                            )),
                        child: Image.asset(
                          "assets/images/g.png",
                          width: 36,
                          height: 36,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () => {Navigator.pushNamed(context, "/")},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Rounded corners
                            )),
                        child: Image.asset(
                          "assets/images/t.png",
                          width: 36,
                          height: 36,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Button(
                      text: "Sign Up",
                      textColor: Colors.blue,
                      color: const Color.fromRGBO(231, 236, 249, 1),
                      onPressed: () =>
                          {Navigator.pushNamed(context, '/signup')}),
                ],
              ),
            )
          ],
        ));
  }
}
