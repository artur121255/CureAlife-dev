import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding12.dart';

class OnBoarding13 extends StatelessWidget {
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Text('What’s your weight? '),
            ),
            Stack(
              alignment: AlignmentDirectional.center,

              children: [
                Container(
                    child: Image.asset(
                        'assets/onboarding13/frame.png')),
                Container(
                    child: Image.asset(
                        'assets/onboarding13/arrow.png')),
                Container(
                    child: Image.asset(
                        'assets/onboarding13/smallcircle.png')),

              ],
            ),
            Column(children: [
              TextField(
                controller: amountController,
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                // onChanged: (val) => amountInput = val,
              ),
            ]),
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
                      MaterialPageRoute(builder: (context) => OnBoarding12())),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
