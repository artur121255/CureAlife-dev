import 'package:flutter/material.dart';
import 'package:medicalinfo2/utils/color_utils.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);
  final color = const Color(0x2a3d00);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          height: 800,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                hexStringToColor("4B643D"),
                hexStringToColor("4B643D"),
                hexStringToColor("4B643D")
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Column(
            children: [
              Container(
                  height: 300,
                  child: Image.asset(
                    'assets/onBoarding2.png',
                    fit: BoxFit.contain,
                  )),
          Container(
            alignment: Alignment.center,
            child: Text( textAlign: TextAlign.center,'Explore tons of new recipes right at your fingertips! You’re about to learn new kitchen skills, cook delicious food, and get healthy while doing it! '),
          ),



            ],
          ),
        ),
      ),
    );
  }
}
