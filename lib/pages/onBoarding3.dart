import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEB9183),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/onBoarding3Img.png" ,height: 380,),
            ),
            Container(
              alignment: Alignment.center,

              child: Text(style: TextStyle(fontSize: 25,color: Colors.white),"Plan your Plate")

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                child: Text(textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white,), "Pile your plate, the right way! Helpful tips on portion control and food!"),

              ),
            )
          ],
        ),
      ),
    );
  }
}
