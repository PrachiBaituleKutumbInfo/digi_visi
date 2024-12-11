import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dashboard.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isChecked = false; // For managing checkbox state

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 224, 224),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title Text
              Text(
                'Welcome To Sign Up!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.02),

              // SVG Image
              SvgPicture.asset(
                'assets/up_email.svg', // Ensure path is valid
                height: screenHeight * 0.2,
                width: screenWidth * 0.4,
              ),
              SizedBox(height: screenHeight * 0.03),

              // Input Fields
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.02,
                    horizontal: screenWidth * 0.05,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your mobile number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.02,
                    horizontal: screenWidth * 0.05,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.02,
                    horizontal: screenWidth * 0.05,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),

              // Agreement Checkbox and Text
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                  ),
                  Expanded(
                    child: RichText(
                      text: const TextSpan(
                        text: 'I agree to the Digital visiting ',
                        style: TextStyle(color: Colors.black87, fontSize: 12),
                        children: [
                          TextSpan(
                            text: 'User Agreement',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                          ),
                          TextSpan(
                            text: 'Privacy Policy.',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),

              // Join Button
              // Join Button
Container(
  width: double.infinity,
  decoration: BoxDecoration(
    gradient: const LinearGradient(
      colors: [Colors.purple, Colors.pink],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
    borderRadius: BorderRadius.circular(8),
  ),
  child: ElevatedButton(
    onPressed: () {
      if (_isChecked) {
        // Navigate to the next page
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const DashboardScreen(),
          ),
        );
      } else {
        // Show a snackbar if the checkbox is not selected
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Please agree to the User Agreement and Privacy Policy to proceed.'),
            backgroundColor: Colors.blueGrey,
          ),
        );
      }
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
    ),
    child: Text(
      'Join Digi-Visi',
      style: TextStyle(
        fontSize: screenHeight * 0.025,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
),

              SizedBox(height: screenHeight * 0.03),

              // Already have an account? Login
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignupScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
