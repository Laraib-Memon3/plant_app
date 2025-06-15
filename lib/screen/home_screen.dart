// ignore: file_names
import 'package:flutter/material.dart';
import 'package:plant_app/Utils/colors.dart ';

// ignore: camel_case_types
class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sideBar()
            ],
          )
        ],
      ));
  }
  
  Expanded sideBar() {
    return Expanded(
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/4543/4543046.png',
                width: 200,
                height: 40,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "Green",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 110,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: RotatedBox(
                quarterTurns: 3,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                      TextSpan(
                        text: "Shape Class ",
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Ignore plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  "Ignore plants",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: primaryColor,
                ),
                width: 60,
                height: 70,
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
