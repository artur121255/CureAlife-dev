import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding9.dart';
import '../utils/risks.dart';
import 'package:google_fonts/google_fonts.dart';


class OnBoarding8 extends StatefulWidget {
  const OnBoarding8({Key? key}) : super(key: key);

  @override
  State<OnBoarding8> createState() => _OnBoarding8State();
}

class _OnBoarding8State extends State<OnBoarding8>
    with TickerProviderStateMixin {
  var selectedRisks = [];

  void ContainerClicked(Risks selectedRisk) {
    color:
    Colors.orangeAccent;
    print("Click event on Container");
    print(selectedRisks);

    setState(() {
      if (selectedRisks.contains(selectedRisk)) {
        selectedRisks.remove(selectedRisk);
      } else {
        selectedRisks.add(selectedRisk);
      }
    });
  }

  changeColorForRisk(Risks selectedRisk) {
    if (selectedRisks.contains(selectedRisk)) {
      return Colors.orangeAccent;
    } else {
      return Colors.white;
    }
  }

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
                        textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 20, fontWeight: FontWeight.w700),
                          'Are you at risk of any of the following?'),
                      SizedBox(height: 10,),
                      Text(style: GoogleFonts.montserrat(),'Select which apply to you')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => ContainerClicked(Risks.Type2Diabetes),
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
                              color: changeColorForRisk(Risks.Type2Diabetes),
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
                          onTap: () => ContainerClicked(Risks.HighCholesterol),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              height: 60,
                              width: 335,
                              decoration: BoxDecoration(
                                color: changeColorForRisk(Risks.HighCholesterol),
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
                                  textAlign: TextAlign.center,
                                  'High Cholesterol '),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () =>
                              ContainerClicked(Risks.HighBloodPressure),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              height: 60,
                              width: 335,
                              decoration: BoxDecoration(
                                color: changeColorForRisk(Risks.HighBloodPressure),
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
                        ),
                        InkWell(
                          onTap: () => ContainerClicked(Risks.HeartDisease),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              height: 60,
                              width: 335,
                              decoration: BoxDecoration(
                                color: changeColorForRisk(Risks.HeartDisease),
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
                        ),
                        InkWell(
                          onTap: () => ContainerClicked(Risks.Asthma),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              height: 60,
                              width: 335,
                              decoration: BoxDecoration(
                                color: changeColorForRisk(Risks.Asthma),
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
                                  Text(textAlign: TextAlign.center, 'Asthma'),
                            ),
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
