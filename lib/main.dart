import 'package:digi_visi/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(
      // backgroundColor: Color.fromARGB(255, 228, 224, 224), // Background color
        
      ),
      
     
      
    );
  }
}
