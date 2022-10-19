import 'package:flutter/material.dart';

class OnBoarding6 extends StatelessWidget {
  const OnBoarding6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B643D),
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/onBoarding6Img.png" ,fit: BoxFit.contain,),
          ),
          Container(
            alignment: Alignment.center,

            child: Text(style: TextStyle(fontWeight: FontWeight.bold),"Welcome")

          ),
          Container(
            alignment: Alignment.center,
            child: Text("Explore tons of new recipes right at your fingertips! You’re about to learn new kitchen skills, cook delicious food, and get healthy while doing it! "),

          )
        ],
      ),
    );
  }
}
