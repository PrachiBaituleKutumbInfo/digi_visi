import 'package:digi_visi/component.dart';
import 'package:digi_visi/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Scale Up Your Connection',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: screenHeight * 0.6,
                  width: screenWidth,
                  child: SvgPicture.asset(
                    'assets/connections.svg',
                    fit: BoxFit.contain,
                  ),
                ),
                const Column(
                  children: [
                    DigiVisi(
                      'Digital',
                    ),
                    SizedBox(height: 5.0),
                    DigiVisi('Visiting'),
                    SizedBox(height: 5.0),
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),

            // Rectangular Button with Gradient
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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
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
                      'Get Started',
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

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
