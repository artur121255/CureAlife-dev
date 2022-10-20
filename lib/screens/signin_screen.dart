import 'package:firebase_auth/firebase_auth.dart';
import 'package:medicalinfo2/pages/starterOnBoarding2.dart';
import 'package:medicalinfo2/reusable_widgets/reusable_widget.dart';
import 'package:medicalinfo2/pages/Starter.dart';
import 'package:medicalinfo2/screens/reset_password.dart';
import 'package:medicalinfo2/screens/home_screen.dart';
import 'package:medicalinfo2/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:medicalinfo2/utils/color_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';



class SignInScreen extends StatefulWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  // String _username = "";
  // void initState() {
  //   super.initState();
  //   _loadUserInfo();
  // }
  // _loadUserInfo() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   _username = (prefs.getString('username') ?? "");
  //   if (_username == "") {
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, 'signIn', ModalRoute.withName('signIn'));
  //   } else {
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, 'HomePage', ModalRoute.withName('HomePage'));
  //   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(
        // gradient: LinearGradient(colors: [
        // Colors.white,
        // Colors.grey
        // ])),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height:200,
                      child: Image.asset(
                        'assets/smallTree.png',
                        fit: BoxFit.contain,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter UserName", Icons.person_outline, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                const SizedBox(
                  height: 5,
                ),
                forgetPassword(context),
                firebaseUIButton(context, "Sign In", () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailTextController.text,
                          password: _passwordTextController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }).onError((error, stackTrace) {
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.right,
        ),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResetPassword())),
      ),
    );
  }
}
