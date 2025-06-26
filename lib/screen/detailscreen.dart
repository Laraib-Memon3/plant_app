import 'package:flutter/material.dart';
import 'package:plant_app/Utils/colors.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            // Main container
            Positioned(
              top: 0,
              child: Container(
                width: size.width,
                height: size.height, // Full height is okay with scroll
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                  color: Colors.white,
                ),
                child: SingleChildScrollView( // 👈 Fix applied here
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 🔙 Back Icon
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).padding.top + 16,
                          left: 16,
                          right: 16,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Icon(Icons.arrow_back, size: 30),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      // 🪴 Title
                      const Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Text(
                          "House Shape Close",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.01,
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),

                      // 🌸 Image & Color bars
                      Stack(
                        children: [
                          Image.asset(
                            "assets/images/flow.jpg",
                            width: size.width,
                          ),
                          Positioned(
                            left: 32,
                            top: 200,
                            child: Container(
                              height: 22,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: primaryColor,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 32,
                            top: 230,
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Positioned(
                            left: 32,
                            top: 230,
                            child: Container(
                              height: 10,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.pink[100],
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                    ],
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
