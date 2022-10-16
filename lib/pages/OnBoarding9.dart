import 'package:flutter/material.dart';
import './OnBoarding10.dart';

class OnBoarding9 extends StatelessWidget {
  const OnBoarding9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Center(
                  child: Text(
                      style: TextStyle(fontSize: 20),
                      'Have you been diagnosed with or received treatment for diabetes?')),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  child: Image.asset('assets/Vector1.png')),
                  Container(
                  child: Image.asset('assets/Vector2.png')),

              ],
              
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 60,
                      width: 335,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 7,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:
                          Text(textAlign: TextAlign.center, 'Type 2 Diabetes'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 60,
                      width: 335,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 7,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:
                          Text(textAlign: TextAlign.center, 'Type 2 Diabetes'),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
