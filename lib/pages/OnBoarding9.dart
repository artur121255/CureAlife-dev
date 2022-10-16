import 'package:flutter/material.dart';

import '../utils/diagnoseTreetment.dart';

class OnBoarding9 extends StatefulWidget {
  const OnBoarding9({Key? key}) : super(key: key);

  @override
  State<OnBoarding9> createState() => _OnBoarding9State();
}

class _OnBoarding9State extends State<OnBoarding9>  with TickerProviderStateMixin {
  var diagnoseTreetment = [];

  void ContainerClicked(diagnosed selectedDiagnose) {
    color:
    Colors.orangeAccent;
    print("Click event on Container");
    print(diagnoseTreetment);

    setState(() {
      if (diagnoseTreetment.contains(selectedDiagnose)) {
        diagnoseTreetment.remove(selectedDiagnose);
      } else {
        diagnoseTreetment.add(selectedDiagnose);
      }
    });
  }

  changeColorForDiagnose(diagnosed ) {
    if (diagnoseTreetment.contains(diagnosed)) {
      return Colors.orangeAccent;
    } else {
      return Colors.white;
    }
  }
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
                  InkWell(
                    onTap: ()=> ContainerClicked(diagnosed.yes),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 60,
                        width: 335,
                        decoration: BoxDecoration(
                          color: changeColorForDiagnose(diagnosed.yes),
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
                            Text(textAlign: TextAlign.center, 'yes'),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: ()=>ContainerClicked(diagnosed.no),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 60,
                        width: 335,
                        decoration: BoxDecoration(
                          color: changeColorForDiagnose(diagnosed.no),
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
                            Text(textAlign: TextAlign.center, 'no'),
                      ),
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
