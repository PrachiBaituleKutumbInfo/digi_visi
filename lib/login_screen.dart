import 'package:digi_visi/component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 224, 224), // Background color
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent AppBar
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Welcome To Onboard!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const DigiVisi('Digital'), // Custom Widget
            const SizedBox(height: 5.0),
            const DigiVisi('Visiting'), // Custom Widget
            const SizedBox(height: 5.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SvgPicture.asset(
                'assets/Login image.svg', // Ensure path is valid
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Enter your Userid',
                    border: OutlineInputBorder(),
                    filled: true, // Enables background color
                    fillColor: Colors.white, // Sets background color
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 10.0),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16), // Adds padding
                  width: screenWidth,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 16), // Vertical padding
                      backgroundColor:
                          Colors.transparent, // Transparent for gradient
                      shadowColor: Colors.transparent, // Removes shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // Slightly rounded corners
                      ),
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
