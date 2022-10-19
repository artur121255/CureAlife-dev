// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class GroceryList extends StatefulWidget {
//   const GroceryList({Key? key}) : super(key: key);
//
//   @override
//   State<GroceryList> createState() => _GroceryListState();
// }
//
//
// class _GroceryListState extends State<GroceryList> {
//   Future getGroceryList() async{
//     await FirebaseFirestore.instance.collection("GroceryList").get().then(
//             (value) => value.docs.forEach((element) {
//           print(element);
//         }));
//   }
//   @override
//   void initState(){
//     getGroceryList();
//     super.initState();
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FirebaseAnimatedList(
//           defaultChild: SplashScreen(),
//           query: itemRef,
//           itemBuilder: (BuildContext context, DataSnapshot snapshot,
//               Animation<double> animation, int index) {
//             return Text('It work ');
//           }),
//       );
//
//   }
//
// }
