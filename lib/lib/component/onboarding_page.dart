import 'package:flutter/material.dart';
import 'package:first_flutter_application/component/rounded_button.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.noOfScreen,
      required this.onNextPressed,
      required this.currentScreenNo})
      : super(key: key);

  final Image image;

  final String title;

  final String description;

  final int noOfScreen;

  final Function(int) onNextPressed;

  final int currentScreenNo;

  @override
  Widget build(BuildContext context) {
    bool isLastScreen = currentScreenNo >= noOfScreen - 1;
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          
          children: [
            Expanded(
              
              child: Column(
                
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  image,
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 30, color: Colors.teal.shade700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Visibility(
              visible: !isLastScreen,
              replacement: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RoundedButton(
                    title: "Next",
                          onPressed: () {
                            openHomeScreen(context);
                    })
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      for (int index = 0; index < noOfScreen; index++)
                        createProgressDots(
                            (index == currentScreenNo) ? true : false)
                            
                    ],
                  ),
                  RoundedButton(
                    title: "Next",
                    onPressed: () {
                      onNextPressed(currentScreenNo + 1);
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }


  Widget createProgressDots(bool isActiveScreen) {
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: isActiveScreen ? 15 : 10,
      width: isActiveScreen ? 15 : 10,
      
      decoration: BoxDecoration(
          color: isActiveScreen ? Colors.black : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );

    
  }


  void openHomeScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/home");
  }
}