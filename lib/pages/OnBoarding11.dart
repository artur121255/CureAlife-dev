import 'package:flutter/material.dart';
import '../utils/gender.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding11 extends StatefulWidget {
  const OnBoarding11({Key? key}) : super(key: key);

  @override
  State<OnBoarding11> createState() => _OnBoarding11State();
}

class _OnBoarding11State extends State<OnBoarding11>
    with TickerProviderStateMixin {
  var selectedGender = [];

  void ContainerClicked(Gender selecteGender) {
    color:
    Colors.orangeAccent;


    setState(() {
      if (selectedGender.contains(selecteGender)) {
        selectedGender.remove(selecteGender);
      } else {
        selectedGender.add(selecteGender);
      }
    });
    print("Click event on Container");
    print(selectedGender);
  }

  changeColorForDiagnose(selecteGender) {
    if (selectedGender.contains(selecteGender)) {
      return Colors.orangeAccent;
    } else {
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Text(style: GoogleFonts.montserrat(fontSize: 20), 'What’s your gender? '),
          ),
          Container(child: Image.asset('assets/gender.png')),
          Container(
            child: Column(
              children: [
                InkWell(
                  onTap: () => ContainerClicked(Gender.Female),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 60,
                      width: 335,
                      decoration: BoxDecoration(
                        color: changeColorForDiagnose(Gender.Female),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 7,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(textAlign: TextAlign.center, 'Female'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => ContainerClicked(Gender.Male),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 60,
                      width: 335,
                      decoration: BoxDecoration(
                        color: changeColorForDiagnose(Gender.Male),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 7,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(textAlign: TextAlign.center, 'Male'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => ContainerClicked(Gender.Other),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      height: 60,
                      width: 335,
                      decoration: BoxDecoration(
                        color: changeColorForDiagnose(Gender.Other),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 5,
                            blurRadius: 7,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(textAlign: TextAlign.center, 'Other'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
