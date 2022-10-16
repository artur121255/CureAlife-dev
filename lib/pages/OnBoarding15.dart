import 'package:flutter/material.dart';
import 'package:medicalinfo2/screens/signin_screen.dart';
import './OnBoarding10.dart';
class OnBoarding15 extends StatelessWidget {
  const OnBoarding15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FreshPlate'),),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Center(child: Text(style: TextStyle(fontSize: 20),'Have you been diagnosed with or received treatment for diabetes?')),
            ),
            Container(
              child:   Icon(
                Icons.heart_broken_outlined,
                size: 150,
                color: Colors.orange,
              ),
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
