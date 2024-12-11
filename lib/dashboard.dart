import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 224, 224), // Background color
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Gradient AppBar
            Container(
              width: double.infinity,
              height: screenWidth*0.2,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                  const Text(
                    "Kriti Saxsena",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Id: dg2023/01A",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
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


            Container(
              width: screenWidth*0.9,
              height: screenHeight*0.33,
              child: Card(
                
                margin: const EdgeInsets.symmetric(horizontal: 15),
                // elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                    const  Row(
                        
                      
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: const CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('assets/photo.jpeg'),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Kriti Saxsena",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              const Text(
                                "Businessman",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                        onPressed: () {
                          // Share QR Code
                        },
                        icon: const Icon(Icons.remove_red_eye, size: 18, color: Colors.black),
                        label: const Text("View",style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                      
                        ),
                      ),
                         ElevatedButton.icon(
                        onPressed: () {
                        },
                        icon: const Icon(Icons.share, size: 18, color: Colors.black),
                        label: const Text("Share",style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                      
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

            Container(
              width: screenWidth*0.9,
              height: screenHeight*0.33,
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: 120,
                        child: SvgPicture.asset('assets/qr_code.svg',
                        // fit: BoxFit.contain,
                        ), 
                      ),
                      const Divider(height: 6),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Share QR Code
                        },
                        icon: const Icon(Icons.share, size: 18, color: Colors.black),
                        label: const Text("Share",style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                      
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
      ),

      // Gradient Bottom Navigation Bar
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
          elevation: 0, // Removes shadow
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_note_outlined),
              label: "Messages",
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
        ),
      ),
    );
  }
}