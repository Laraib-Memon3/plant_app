import 'package:flutter/material.dart';
import 'package:plant_app/Utils/colors.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child:  Stack(
          children: [
            // Hero(
            //   tag: "flower1",
            //     child: Image.asset("images/flow.jpg"),
            // )
            Positioned(
              top: 0,
              child: 
              Container(
                height: MediaQuery.of(context).size.height*0.85,
                width: MediaQuery.of(context).size.width,
                 decoration: const BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200)), color: Colors.white ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top,
                        right: 16, left: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                
                              },
                              child:  const Icon(Icons.arrow_back, size:  30,),
                              
                            ),
                            //for filter icon
                            Image.asset("assets/images/filter icon.png", height: 50, width:  50,)
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(padding:  EdgeInsets.only(left: 32.0),
                        child: Text("House Shape Close",
                          textAlign: TextAlign.start, style: TextStyle(fontSize:32, fontWeight: FontWeight.bold, height: 1.01 ),),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: 32),
                        child: Stack(
                          children: [
                            Image.asset("assets/images/flow.jpg", width: MediaQuery.of(context).size.width,),
                            Padding(padding: 
                              EdgeInsets.only(
                                top: 290
                              ),
                            child: Container(height: 22, width: 8, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                            color: primaryColor
                            ), ),
                            ),
                            Padding(padding:
                            EdgeInsets.only(
                                top: 305
                            ),
                              child: Container(height:10 , width: 8, decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                                  color: Colors.pink[100]
                              ), ),
                            ),
                            
                          ],
                        ),
                        
                      )
                    ],
                  ),
                
              )),
            
          ],
        ),
      ),
      
    );
  }
}
