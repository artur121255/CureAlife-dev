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


          ],
        ),
      ),
    );
  }
}
