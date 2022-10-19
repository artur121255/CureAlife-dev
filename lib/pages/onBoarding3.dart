import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEB9183),
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/onBoarding3Img.png" ,fit: BoxFit.contain,),
          ),
          Container(
            alignment: Alignment.center,

            child: Text(style: TextStyle(fontWeight: FontWeight.bold),"Plan your Plate")

          ),
          Container(
            alignment: Alignment.center,
            child: Text("Pile your plate, the right way! Helpful tips on portion control and food!"),

          )
        ],
      ),
    );
  }
}
