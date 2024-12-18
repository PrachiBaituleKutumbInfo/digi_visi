import 'package:digi_visi/update_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final int _currentIndex = 0; // Declare _currentIndex at class level

  void _onBottomNavTap(int index) {
    print("BottomNav Index: $index"); // Debug print
    if (index == 2) {
      // print("Navigating to UpdateInfoScreen");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const UpdateInfoScreen()),
      );
    } else {
      setState(() {
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 228, 224, 224), // Background color
      body: Stack(children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Kriti Saxsena",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                const  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Id: dg2023/01A",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Welcome Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Hello Kriti !",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                    const  Row(
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage: AssetImage('assets/photo.jpeg'),
                          ),
                          SizedBox(width: 30.0),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Column(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kriti Saxsena',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Businessman',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    const   SizedBox(height: 10),
                      const Divider(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility,
                              color: Colors.black,
                            ),
                            label: const Text(
                              "View",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.share, color: Colors.black),
                            label: const Text(
                              "Share",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        child: SvgPicture.asset(
                          'assets/qr_code.svg',
                          fit: BoxFit.contain,
                        ),
                      ),
                      const Divider(height: 1),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.share, color: Colors.black),
                        label: const Text(
                          "Share",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ]),

      // Gradient Bottom Navigation Bar
      bottomNavigationBar: Container(
        // width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.purple, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          currentIndex: _currentIndex, // Use _currentIndex state
          onTap: _onBottomNavTap, // Call method
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_document),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
