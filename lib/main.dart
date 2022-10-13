import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding7.dart';
import 'package:medicalinfo2/pages/OnBoarding10.dart';
import 'package:medicalinfo2/pages/OnBoarding11.dart';
import 'package:medicalinfo2/pages/OnBoarding12.dart';
import 'package:medicalinfo2/pages/OnBoarding13.dart';
import 'package:medicalinfo2/pages/OnBoarding9.dart';
import 'package:medicalinfo2/pages/OnBoarding8.dart';
import './pages/starter.dart';
import './pages/starter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Starter(),
    // routes: {
    //  '/onboarding8':(context)=>onBoarding8(),
    //
    // },
    );
  }
}
