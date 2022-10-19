import 'package:flutter/material.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff99B182),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/onBoarding4Img.png" ,height: 380,),
            ),
            Container(
              alignment: Alignment.center,

              child: Text(style: TextStyle(fontSize: 25,color: Colors.white),"Grocery List")

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                child: Text(textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white,), "Each week you’ll get a grocery list sent directly to you, so you can navigate the grocery store the right way!"),

              ),
            )
          ],
        ),
      ),
    );
  }
}
