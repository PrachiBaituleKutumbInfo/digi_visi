import 'package:flutter/material.dart';

class UpdateInfoScreen extends StatefulWidget {
  const UpdateInfoScreen({super.key});

  @override
  State<UpdateInfoScreen> createState() => _UpdateInfoScreenState();
}

class _UpdateInfoScreenState extends State<UpdateInfoScreen> {
  final List<Map<String, dynamic>> menuItems = [
    {"icon": Icons.image, "label": "Update Profile Pics And Links"},
    {"icon": Icons.info, "label": "Edit Basic Information"},
    {"icon": Icons.edit_document, "label": "Edit We Do Section"},
    {"icon": Icons.contact_phone, "label": "Edit Contact Us Page"},
    {"icon": Icons.work, "label": "Update Portfolio Section"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD1D8E0), // Light background color
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
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Update Your Info Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Row(
              children: const [
                Icon(Icons.edit_document, color: Color.fromARGB(255, 17, 5, 54), size: 20),
                SizedBox(width: 8),
                Text(
                  "Update Your Info",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),

          // Cards for Update Options
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: menuItems.length,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Icon(
                        menuItems[index]["icon"],
                        color: Colors.purple,
                      ),
                      title: Text(
                        menuItems[index]["label"],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.black54,
                      ),
                      onTap: () {
                        // Handle tap
                      },
                    ),
                  );
                },
              ),
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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_phone),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_document),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
