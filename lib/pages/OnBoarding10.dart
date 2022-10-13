import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding11.dart';

class OnBoarding10 extends StatefulWidget {
  const OnBoarding10({Key? key}) : super(key: key);

  @override
  State<OnBoarding10> createState() => _OnBoarding10State();
}

class _OnBoarding10State extends State<OnBoarding10> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text('How active are you? '),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(child: Image.asset('assets/active.png')),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Slider(
                        value: _currentSliderValue,
                        max: 100,
                        divisions: 5,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sedentary'),
                            Text('Extra Active')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 0),
              child: Container(
                child: InkWell(
                  child: Text(
                    'Next',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OnBoarding11())),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
