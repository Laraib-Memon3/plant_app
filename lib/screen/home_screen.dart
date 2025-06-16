// ignore: file_names
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/Utils/colors.dart ';

// ignore: camel_case_types
class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              sideBar(),
              bodyParts(size),
              
            ],
          ),
          const Positioned(
              top: 135,
              left: 29,
              child: Text("Plants", style:
              TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35),)),
          const Positioned(
              top: 45,
              right: 8,
            child:  Icon(Icons.search, color: Colors.black, size: 40,),
              )
        ],
      ));
  }
  Container bodyParts(Size size){
    return Container(
      width: size.width * 0.8,
      color: Colors.white,
      child:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 130,)
          ],
        ),
      ),
    );
  }
  
  Expanded sideBar() {
    
    return Expanded(
      child: Container(
        color: secondaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 38),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/128/4543/4543046.png',
                width: 60,
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
              height: 210,
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
              height: 40,
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
