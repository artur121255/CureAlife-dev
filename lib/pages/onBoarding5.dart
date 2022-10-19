import 'package:flutter/material.dart';

class OnBoarding5 extends StatelessWidget {
  const OnBoarding5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7C851),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/onBoarding5Img.png" ,height: 380,),
            ),
            Container(
              alignment: Alignment.center,

              child: Text(style: TextStyle(fontSize: 25,color: Colors.white),"Search")

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                child: Text(textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white,), "If you have extra ingredients laying around your kitchen, look up recipes to use your extras so you don’t waste food!"),

              ),
            )
          ],
        ),
      ),
    );
  }
}
