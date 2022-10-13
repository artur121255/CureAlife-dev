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
                Container(
                    child: Image.asset(
                        'assets/onboarding12/hat.png')),
                Container(
                    child: Image.asset(
                        'assets/onboarding12/had.png')),
                Container(
                    child: Image.asset(
                        'assets/onboarding12/body.png')),

              ],
            ),

            Padding(
              padding: EdgeInsets.only(top:0),
              child: Container(
                child: InkWell(
                  child: Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnBoarding13())),
                ),
              ),
            ),

  
          ],
        ),
      ),
    );
  }
}
