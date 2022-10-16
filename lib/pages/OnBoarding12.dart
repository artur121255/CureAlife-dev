import 'package:flutter/material.dart';
import './OnBoarding13.dart';

class OnBoarding12 extends StatelessWidget {
  const OnBoarding12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Text('When were you born? '),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(child: Image.asset('assets/onboarding12/hat.png')),
                Container(child: Image.asset('assets/onboarding12/had.png')),
                Container(child: Image.asset('assets/onboarding12/body.png')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
