import 'package:appx/utilities.dart';
import 'package:flutter/material.dart';
import 'package:appx/welcome.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary1,
      body: Padding(
        padding: EdgeInsets.all(50.0),
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
            SizedBox(height: 50),
            Text(
              'Enter your email address to receive a link to reset your password.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20), // Adjust vertical padding here
                labelText: 'Email',
                filled: true,
                fillColor: primary2,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 5.0), // Move 5px to the left
                child: TextButton(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: primary6,
                      fontSize: 13,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 20,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomePage()),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              child: Text(
                'Send Reset Link',
                style: TextStyle(color: buttoncolor),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 20,
                shadowColor: Colors.black,
              ),
              onPressed: () {
                
              },
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
