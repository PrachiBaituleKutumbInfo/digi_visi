import 'package:digi_visi/profile_links_screen.dart';
import 'package:flutter/material.dart';

class UpdateInfoScreen extends StatefulWidget {
  const UpdateInfoScreen({super.key});

  @override
  State<UpdateInfoScreen> createState() => _UpdateInfoScreenState();
}

class _UpdateInfoScreenState extends State<UpdateInfoScreen> {
  final List<Map<String, dynamic>> menuItems = [
    {"icon": Icons.person_2, "label": "Update Profile Pics And Links"},
    {"icon": Icons.info, "label": "Edit Basic Information"},
    {"icon": Icons.archive_outlined, "label": "Edit We Do Section"},
    {"icon": Icons.contact_phone_outlined, "label": "Edit Contact Us Page"},
    {"icon": Icons.work_outline, "label": "Update Portfolio Section"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background Color
      backgroundColor: 
                const Color.fromARGB(255, 228, 224, 224), // Background color

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Update Your Info Header
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
            child: Row(
              children: [
                Icon(Icons.edit_document, color: Color.fromARGB(255, 36, 7, 85), size: 20),
                SizedBox(width: 8),
                Text(
                  "Update Your Info",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),

          // Cards Section
          Expanded(
            
            child: Padding(
            padding: const EdgeInsets.all(20.0),
              child: Container(
                
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                
                child: 
                ListView.separated(
                
                  physics: const BouncingScrollPhysics(),
                  itemCount: menuItems.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    return Card(
                      color: const Color(0xFFF7F9FC),
                      shadowColor: Colors.black12,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(10.0
                        ),
                        leading: Icon(
                          menuItems[index]["icon"],
                          color: Color.fromARGB(255, 36, 7, 85), 
                          size: 22,
                        ),
                        title: Text(
                          menuItems[index]["label"],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.purple,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.trending_flat,
                          size: 25,
                          color: Colors.black,
                        ),
                       onTap: () {
    if (menuItems[index]["label"] == "Update Profile Pics And Links") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const UpdateProfileLinksScreen(),
        ),
      );
    }
  },
                      ),
                    );
                  },
                ),
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
