import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding2.dart';
import 'package:medicalinfo2/pages/OnBoarding3.dart';
import 'package:medicalinfo2/pages/OnBoarding4.dart';
import 'package:medicalinfo2/pages/OnBoarding5.dart';
import 'package:medicalinfo2/pages/OnBoarding6.dart';
import 'package:medicalinfo2/pages/OnBoarding7.dart';
import 'package:medicalinfo2/pages/OnBoarding10.dart';
import 'package:medicalinfo2/pages/OnBoarding11.dart';
import 'package:medicalinfo2/pages/OnBoarding12.dart';
import 'package:medicalinfo2/pages/OnBoarding13.dart';
import 'package:medicalinfo2/pages/OnBoarding9.dart';
import 'package:medicalinfo2/pages/OnBoarding8.dart';
import 'package:medicalinfo2/pages/starterOnBoarding2.dart';
import 'package:medicalinfo2/screens/home_screen.dart';
import 'package:medicalinfo2/screens/register.dart';
import 'package:medicalinfo2/screens/signin_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './pages/Starter.dart';
import './pages/starterOnBoarding2.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_file/open_file.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart' ;
import 'package:flutter/services.dart';


var initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  await Firebase.initializeApp();


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
      initialRoute:  initScreen==0||initScreen==null? 'OnBoardingStarter' :'signIn',
      routes: {
        'signIn' :(context) => SignInScreen(),
        // 'onBoarding': (context) => StarterOnBoarding(),
        'register' : (context)=> Register(),
        'OnBoardingStarter' :(context) => StarterOnBoarding(),
        'HomePage':(context)=> HomeScreen()
      },





    );

  }
}
