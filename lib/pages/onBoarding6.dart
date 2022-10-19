import 'package:flutter/material.dart';

class OnBoarding6 extends StatelessWidget {
  const OnBoarding6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE09167),
      body: Padding(
        padding: const EdgeInsets.only(right: 20,left: 20),
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/onBoarding6Img.png" ,height: 380,),
            ),
            Container(
              alignment: Alignment.center,

              child: Text(style: TextStyle(fontSize: 25,color: Colors.white),"Your Library")

            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                alignment: Alignment.center,
                child: Text(textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white,), "You now have access to food related resources and education tips to help you maintain a healthy lifestyle!"),

              ),
            )
          ],
        ),
      ),
    );
  }
}
