import 'package:flutter/material.dart';
import 'package:first_flutter_application/component/onboarding_page.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          OnboardingPage(
            image: Image.asset('assets/onboarding/onboarding1.png'),
            title: "Welcome",
            description:
                "Explore tons of new recipes right at your fingertips! You’re about to learn new kitchen skills, cook delicious food, and get healthy while doing it! ",
            noOfScreen: 5,
            onNextPressed: changeScreen,
            currentScreenNo: 0,
          ),
          OnboardingPage(
            image: Image.asset('assets/onboarding/onboarding2.png'),
            title: "Plan your Plate",
            description:
                "Pile your plate, the right way! Helpful tips on portion control and food!",
            noOfScreen: 5,
            onNextPressed: changeScreen,
            currentScreenNo: 1,
          ),
          OnboardingPage(
            image: Image.asset('assets/onboarding/onboarding3.png'),
            title: "Grocery List",
            description:
                "Each week you’ll get a grocery list sent directly to you, so you can navigate the grocery store the right way!",
            noOfScreen: 5,
            onNextPressed: changeScreen,
            currentScreenNo: 2,
          ),
          OnboardingPage(
            image: Image.asset('assets/onboarding/onboarding4.png'),
            title: "Search",
            description:
                "If you have extra ingredients laying around your kitchen, look up recipes to use your extras so you don’t waste food!",
            noOfScreen: 5,
            onNextPressed: changeScreen,
            currentScreenNo: 3,
          ),
          OnboardingPage(
            image: Image.asset('assets/onboarding/onboarding5.png'),
            title: "Your Library ",
            description:
                "You now have access to food related resources and education tips to help you maintain a healthy lifestyle! ",
            noOfScreen: 5,
            onNextPressed: changeScreen,
            currentScreenNo: 4,
          ),
        ],
      ),
    );
  }


  void changeScreen(int nextScreenNo) {
    controller.animateToPage(nextScreenNo,
        duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}