import './dayOne.dart';
import './dayTwo.dart';
import './dayThree.dart';
import 'package:flutter/material.dart';


class StarterMealPlan extends StatefulWidget {
  const StarterMealPlan({Key? key}) : super(key: key);

  @override
  StarterMealPlanState createState() => StarterMealPlanState();
}

class StarterMealPlanState extends State<StarterMealPlan> {
  final _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Column(

            // scrollDirection: Axis.vertical,
            // physics: const AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.95,
                child: PageView(
                  controller: _controller,
                  children: <Widget>[
                    dayOne(),
                    dayTwo(),
                    dayThree(),
                    // const OnBoarding15()
                  ],
                ),
              ),

          ]),
        ));
  }
}
