import 'package:firebase_auth/firebase_auth.dart';
import 'package:medicalinfo2/screens/MealPlan.dart';
import 'package:medicalinfo2/screens/education.dart';
import 'package:medicalinfo2/screens/groceries.dart';
import 'package:medicalinfo2/screens/profile.dart';
import 'package:medicalinfo2/screens/reciesPage.dart';
import 'package:medicalinfo2/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {

  List bottomNavPages = [
    ProfileScreen(),
    MealPlan(),
    RecipesPage(),
    Groceries(),
    Education(),

  ];
  int currentIndex = 0; //New

  void onTap(int index){
    setState(() {
      currentIndex=index;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //
      //   child: ElevatedButton(
      //     child: Text("Logout"),
      //     onPressed: () {
      //       FirebaseAuth.instance.signOut().then((value) {
      //         print("Signed Out");
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => SignInScreen()));
      //       });
      //     },
      //   ),
      // ),
      body: bottomNavPages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: currentIndex, //New
        onTap: onTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'MealPlan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Recipes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Grocery List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Education',
          ),


        ],

      ),
    );
  }
}
