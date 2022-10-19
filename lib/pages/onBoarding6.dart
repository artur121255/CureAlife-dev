import 'package:flutter/material.dart';

class OnBoarding6 extends StatelessWidget {
  const OnBoarding6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE09167),
      body: Column(
        children: [
          Container(
            child: Image.asset("assets/onBoarding6Img.png" ,fit: BoxFit.contain,),
          ),
          Container(
            alignment: Alignment.center,

            child: Text(style: TextStyle(fontWeight: FontWeight.bold),"Your Library")

          ),
          Container(
            alignment: Alignment.center,
            child: Text("You now have access to food related resources and education tips to help you maintain a healthy lifestyle!"),

          )
        ],
      ),
    );
  }
}
