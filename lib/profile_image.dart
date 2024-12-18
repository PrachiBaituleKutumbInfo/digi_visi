import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileImageScreen extends StatefulWidget {
  const ProfileImageScreen({super.key});

  @override
  State<ProfileImageScreen> createState() => _ProfileImageScreenState();
}

class _ProfileImageScreenState extends State<ProfileImageScreen> {
  
  // State variable for the image
  File? _image;

  // Function to pick an image from the gallery
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Set the picked image to the state
      });
    }
  }

  @override
  Widget build(BuildContext context) {
       double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 224, 224), // Background color

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Center(
          child: Text(
            "Kriti Saxena",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),

      // Body
      body: Column(
        children: [
          const SizedBox(height: 20), // Space after AppBar

          // Profile Icon and Header
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.document_scanner,
                    color: Color.fromARGB(255, 36, 7, 85), size: 28), // Larger Icon
                SizedBox(width: 8),
                Text(
                  "Profile Image",
                  style: TextStyle(
                    fontSize: 22, // Slightly bigger font
                    fontWeight: FontWeight.w700,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight*0.2),
          // Elevated Circle Avatar with Shadow
          Material(
            elevation: 16, // Double elevation (makes the shadow more prominent)
            shape: const CircleBorder(),
            child: CircleAvatar(
              radius: 115,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 110,
                backgroundImage: _image != null
                    ? FileImage(_image!)
                    : const AssetImage('assets/photo.jpeg') as ImageProvider,
              ),
            ),
          ),
SizedBox(height: 20.0),
          // Update Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
           
              backgroundColor: Colors.white,
              foregroundColor: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 15),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onPressed: _pickImage, // Call the image picker
            child: const Text(
              "Update",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled, size: 28),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page, size: 28),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_document, size: 28),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
