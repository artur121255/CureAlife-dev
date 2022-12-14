import 'package:firebase_auth/firebase_auth.dart';
import 'package:medicalinfo2/pages/Starter.dart';
import 'package:medicalinfo2/reusable_widgets/reusable_widget.dart';
import 'package:medicalinfo2/screens/home_screen.dart';
import 'package:medicalinfo2/screens/signin_screen.dart';
import 'package:medicalinfo2/utils/color_utils.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();

  void userCheck() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
          email: _emailTextController.text,
          password: _passwordTextController.text);

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }


//  Navigator.of(context).push(
//       MaterialPageRoute(
//           builder: (context) => const SignInScreen(),
//}

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  // width: double.infinity,
                  //   height: 300,
                  //   decoration: BoxDecoration(
                  //       gradient: LinearGradient(colors: [
                  //     Colors.white,
                  //     Colors.grey,
                  //   ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: SingleChildScrollView(
                      child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text('hello...'),
                                    Text(
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                        'Register'),
                                  ],
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                child: Stack(
                                  children: [
                                    Positioned(
                                        child: Container(
                                      child: Image.asset(
                                        'assets/smallTree.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        reusableTextField(
                            "Enter UserName",
                            Icons.person_outline,
                            false,
                            _userNameTextController),
                        const SizedBox(
                          height: 20,
                        ),
                        reusableTextField("Enter Email",
                            Icons.person_outline, false, _emailTextController),
                        const SizedBox(
                          height: 20,
                        ),
                        reusableTextField("Enter Password", Icons.lock_outlined,
                            true, _passwordTextController),
                        const SizedBox(
                          height: 20,
                        ),
                        firebaseUIButton(context, "Sign Up", () {
                          // FirebaseAuth.instance
                          //     .createUserWithEmailAndPassword(
                          //         email: _emailTextController.text,
                          //         password: _passwordTextController.text)
                          //     .then((value) {
                          //   print("Created New Account");
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Starter()));
                          // }).onError((error, stackTrace) {
                          //   print("Error ${error.toString()}");
                          // });
                          userCheck();
                        })
                      ],
                    ),
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
