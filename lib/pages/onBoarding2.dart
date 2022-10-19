import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4B643D),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/onBoarding2Img.png" ,height: 380,),
            ),
            Container(
              alignment: Alignment.center,

              child: Text(style: TextStyle(fontSize: 25,color: Colors.white),"Welcome")

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                child: Text(textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white,), "Explore tons of new recipes right at your fingertips! You’re about to learn new kitchen skills, cook delicious food, and get healthy while doing it! "),

              ),
            )
          ],
        ),
      ),
    );
  }
}
