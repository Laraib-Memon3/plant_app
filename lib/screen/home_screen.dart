// ignore: file_names


import 'package:flutter/material.dart';
import 'package:plant_app/Utils/colors.dart';
import 'package:plant_app/screen/detailscreen.dart';
import 'package:plant_app/screen/product.dart';



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
              bodyParts(size, context),
              
            ],
          ),
          const Positioned(
              top: 135,
              left: 29,
              child: Text("Plants", style:
              TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25),)),
          const Positioned(
              top: 45,
              right: 8,
            child:  Icon(Icons.search, color: Colors.black, size: 40,),
              )
        ],
      ));
  }
  Container bodyParts(Size size, BuildContext context) {
    return Container(
      width: size.width * 0.8,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> DetailScreen(), 
                ), 
                );
                
              },
              child: const Hero(
                tag: "flower1",
                child: Product(
                  image: "assets/images/flow.jpg",
                  name: "house shape close",
                  price: "45",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Hero(
              tag: "flower2",
              child: Product(
                image: "assets/images/flower2.jpg",
                name: "Glass water",
                price: "60",
              ),
            ),
          ],
        ),
      ),
    );
  }

}
Expanded sideBar() {

  return Expanded(
    child: Container(
      color: babyPink,
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
