import 'package:flutter/material.dart';
import 'package:medicalinfo2/screens/signup_screen.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
      Container(
      child: Container(
      height: 600,
          width: double.infinity,
          child: Image.asset('assets/RegisterTree.png', fit: BoxFit.cover,)),
    ),
            SizedBox(height: 70),
    InkWell(
    onTap: () => Navigator.of(context).push(
    MaterialPageRoute(
    builder: (context) => const SignUpScreen()),
    ),
    child: Container(
      width: 300,
    height: 50,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.orange,
      borderRadius: BorderRadius.circular(20),

    ),
    child: Text(style: TextStyle(color: Colors.white),'register'),
    ),
    )
    ,
    ]
    ,
    )
    ,
    );
  }
}
