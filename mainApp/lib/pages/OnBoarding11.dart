import 'package:flutter/material.dart';
import './OnBoarding12.dart';
 class OnBoarding11 extends StatelessWidget {
   const OnBoarding11({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,

           children: [
             Container(
               child: Text('What’s your gender? '),
             ),
             Container(
                 child: Image.asset(
                     'assets/gender.png')),


           ],
         ),
       ),
     );
   }
 }
