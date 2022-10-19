import 'package:flutter/material.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff99B182),
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/onBoarding4Img.png" ,fit: BoxFit.contain,),
          ),
          Container(
            alignment: Alignment.center,

            child: Text(style: TextStyle(fontWeight: FontWeight.bold),"Grocery List")

          ),
          Container(
            alignment: Alignment.center,
            child: Text("Each week you’ll get a grocery list sent directly to you, so you can navigate the grocery store the right way!"),

          )
        ],
      ),
    );
  }
}
