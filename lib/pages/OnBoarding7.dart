

import 'package:flutter/material.dart';

import '../utils/goals.dart';
import './OnBoarding8.dart';

class OnBoarding7 extends StatefulWidget {

  @override
  State<OnBoarding7> createState() => OnBoarding7State();
}

class OnBoarding7State extends State<OnBoarding7>
    with TickerProviderStateMixin {
  var selectedGoals =  [];

  void ContainerClicked(Goals selectedGoal) {
    color: Colors.orangeAccent;
    print("Click event on Container");
    print("before:");
    print(selectedGoals);

    setState(() {
      if (selectedGoals.contains( selectedGoal)){
        selectedGoals.remove(selectedGoal);
      } else{
        selectedGoals.add(selectedGoal);
      }
      print("after:");
      print(selectedGoals);
    });
  }

  Color _getColorForGoal(Goals selectedGoal){
    if (selectedGoals.contains( selectedGoal)){
     return Colors.orange;
    } else{
     return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Container(
                color: Colors.white,
                height: 50,
                child: Column(
                  children: [
                    Text(
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        'What are your goals?'),
                    Text('Select which apply to you')
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                height: 800,
                child: GridView(
                  children: <Widget>[
                    InkWell(
                      onTap: ()=> ContainerClicked(Goals.beHealthier),
                      child: Container(
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: _getColorForGoal(Goals.beHealthier),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(0, 5)),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                child: Image.asset(
                                    'assets/onBoarding7/VectorSmall.png')),
                            Text(
                              'Be healthier',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => ContainerClicked(Goals.manageMyGlucose),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: _getColorForGoal(Goals.manageMyGlucose),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(0, 5)),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Image.asset(
                                    'assets/onBoarding7/manageglucose.png')),
                            Text(
                              'Manage my glucose',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=> ContainerClicked(Goals.increaseMyEnergyLevels),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: _getColorForGoal(Goals.increaseMyEnergyLevels),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(0, 5)),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Image.asset(
                                    'assets/onBoarding7/increase.png')),
                            Text(
                              'Increase my energy levels',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=> ContainerClicked(Goals.loseWeight),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: _getColorForGoal(Goals.loseWeight),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(0, 5)),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Image.asset(
                                    'assets/onBoarding7/weight.png')),
                            Text(
                              'Lose weight ',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=> ContainerClicked(Goals.learnToCook),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: _getColorForGoal(Goals.learnToCook),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(0, 5)),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                child: Image.asset(
                                    'assets/onBoarding7/cook1.png')),
                            Text(
                              'Learn to cook',
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: ()=> ContainerClicked(Goals.learnNewRecipes),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: _getColorForGoal(Goals.learnNewRecipes),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.black,
                                  offset: Offset(0, 5)),
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                        'assets/onBoarding7/recipes.png')),
                                Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                        'assets/onBoarding7/recipeSmall.png')),
                              ],
                            ),
                            Text(
                              'Learn new recipes',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 2.2 / 2,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
