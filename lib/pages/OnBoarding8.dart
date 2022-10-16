import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding9.dart';

class OnBoarding8 extends StatelessWidget {

  const OnBoarding8({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                          'Are you at risk of any of the following?'),
                      Text('Select which apply to you')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: ()=>null,
                child: Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    offset: Offset(0, 5))
                              ],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                                textAlign: TextAlign.center, 'Type 2 Diabetes'),
                          ),
                        ),
                        InkWell(
                          onTap: ()=>null,
                          child: Padding(
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
                                      offset: Offset(0, 5))
                                ],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                  textAlign: TextAlign.center, 'High Cholesterol '),
                            ),
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
                            child: Text(
                                textAlign: TextAlign.center,
                                'High Blood Pressure'),
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
                            child: Text(
                                textAlign: TextAlign.center, 'Heart Disease'),
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
                            child: Text(textAlign: TextAlign.center, 'Asthma'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
