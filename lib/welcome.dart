import 'package:appx/forgotpass.dart';
import 'package:appx/utilities.dart';
import 'package:flutter/material.dart';
import 'package:appx/home.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  child: Image.asset(
                    'assets/FinTimes.png',
                    width: 200,
                    height: 200,
                  ),
                ),
                const Text(
                  'Your Finance Partner',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                const SizedBox(height: 30),
                TextField(
                  controller: emailController,
                  cursorColor: Colors.green,
                  style: const TextStyle(color: Colors.green),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: primary2,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    labelText: 'Email',
                    focusColor: Colors.green,
                    hoverColor: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  cursorColor: Colors.green,
                  style: const TextStyle(color: Colors.green),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: primary2,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                    labelText: 'Password',
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassPage()),
                        );
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Corrected here
                ElevatedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: buttoncolor,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HomePage()),
                    );
                    // Handle login here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
