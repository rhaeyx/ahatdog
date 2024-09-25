import 'package:cs3midlogin/button.dart';
import 'package:cs3midlogin/labeled_input_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const HomeScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
      },
    );
  }
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(238, 232, 234, 1),
        body: SingleChildScrollView(
          child: Column(
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
                        "New Account",
                        style:
                            TextStyle(fontSize: 28, color: Colors.blueAccent),
                      ),
                      Text("Sign up and get started."),
                    ]),
              ),
              const SizedBox(height: 40),
              Container(
                width: 0.80 * screenWidth,
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
                      label: "First Name",
                      controller: _fnameController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LabeledInputBox(
                      label: "Last Name",
                      controller: _lnameController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    LabeledInputBox(
                      label: "Username",
                      controller: _lnameController,
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
                      height: 20,
                    ),
                    LabeledInputBox(
                      label: "Confirm Password",
                      controller: _password2Controller,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Button(
                        text: "Sign Up",
                        onPressed: () => {Navigator.pushNamed(context, "/")}),
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
                        text: "Sign In",
                        textColor: Colors.blue,
                        color: const Color.fromRGBO(231, 236, 249, 1),
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/signin')}),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ));
  }
}

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
                      onPressed: () => {Navigator.pushNamed(context, "/")}),
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
