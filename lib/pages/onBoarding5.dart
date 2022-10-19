import 'package:flutter/material.dart';

class OnBoarding5 extends StatelessWidget {
  const OnBoarding5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7C851),
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/onBoarding5Img.png" ,fit: BoxFit.contain,),
          ),
          Container(
            alignment: Alignment.center,

            child: Text(style: TextStyle(fontWeight: FontWeight.bold),"Search")

          ),
          Container(
            alignment: Alignment.center,
            child: Text("If you have extra ingredients laying around your kitchen, look up recipes to use your extras so you don’t waste food!"),

          )
        ],
      ),
    );
  }
}
