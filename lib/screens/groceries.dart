// import 'package:flutter/material.dart';
//
// class Groceries extends StatefulWidget {
//   const Groceries({Key? key}) : super(key: key);
//
//   @override
//   State<Groceries> createState() => _GroceriesState();
// }
//
// class _GroceriesState extends State<Groceries> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
// // appBar: AppBar(
// //   // Here we take the value from the MyHomePage object that was created by
// //   // the App.build method, and use it to set our appbar title.
// //   title: Text(widget.title),
// //   centerTitle: true,
// // ),
//
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           const Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(0.0, 46.0, 0.0, 0.0),
//               child: Text(
//                 'My Grocery List',
//                 style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                   margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
//                   child: OutlinedButton(
//                     onPressed: null,
//                     style: ButtonStyle(
// // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
//                         shape: MaterialStateProperty.all<OutlinedBorder>(
//                       RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0)),
//                     )),
//                     child: const Text(
//                       "week 1",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   )),
//               Container(
//                   margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
//                   child: OutlinedButton(
//                     onPressed: null,
//                     style: ButtonStyle(
// // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
//                         shape: MaterialStateProperty.all<OutlinedBorder>(
//                       RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0)),
//                     )),
//                     child: const Text(
//                       "week 2",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   )),
//               Container(
//                   margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
//                   child: OutlinedButton(
//                     onPressed: null,
//                     style: ButtonStyle(
// // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
//                         shape: MaterialStateProperty.all<OutlinedBorder>(
//                       RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0)),
//                     )),
//                     child: const Text(
//                       "week 3",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   )),
//               Container(
//                   margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
//                   child: OutlinedButton(
//                     onPressed: null,
//                     style: ButtonStyle(
// // shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
//                         shape: MaterialStateProperty.all<OutlinedBorder>(
//                       RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30.0)),
//                     )),
//                     child: const Text(
//                       "week 4",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   )),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("select all"),
//               )
//             ],
//           ),
//           SingleChildScrollView(
//             scrollDirection: Axis.vertical,
//             child: SizedBox(
//               width: 412.0,
//               height: 610.0,
//               child: ListView(
// // padding: const EdgeInsets.all(8),
//                 children: <Widget>[
//                   SizedBox(
//                     width: 412.0,
//                     height: 151.0,
//                     child: ListView(
//                       children: <Widget>[
//                         Container(
//                             width: 375.0,
//                             height: 28.0,
//                             color: Colors.deepOrange[300],
//                             child: Row(
//                               children: <Widget>[
//                                 Image.asset('assets/dairy.png'),
//                                 Text(
//                                   'Dairy',
//                                   style: TextStyle(color: Colors.white),
//                                 ),
//                               ],
//                             )),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('Milk  3 Caps'),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('cottage   300mg'),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('cheese  500mg'),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 412.0,
//                     height: 151.0,
//                     child: ListView(
//                       children: <Widget>[
//                         Container(
//                           width: 375.0,
//                           height: 28.0,
//                           color: Colors.deepOrange[300],
//                           child: Row(
//                             children: <Widget>[
//                               Image.asset('assets/meat.png'),
//                               Text(
//                                 'Meat',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('Chicken  200gr'),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('Flank  300gr'),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('Turkey  500gr'),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 412.0,
//                     height: 151.0,
//                     child: ListView(
//                       children: <Widget>[
//                         Container(
//                           width: 375.0,
//                           height: 28.0,
//                           color: Colors.deepOrange[300],
//                           child: Row(
//                             children: <Widget>[
//                               Image.asset('assets/Fruit.png'),
//                               Text(
//                                 'Fruit',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('Banana '),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('Apple '),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('Peach '),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: 412.0,
//                     height: 151.0,
//                     child: ListView(
//                       children: <Widget>[
//                         Container(
//                           width: 375.0,
//                           height: 28.0,
//                           color: Colors.deepOrange[300],
//                           child: Row(
//                             children: <Widget>[
//                               Padding(
//                                 padding: const EdgeInsets.all(5.0),
//                               ),
//                               Image.asset('assets/vegetables.png'),
//                               Text(
//                                 'vegetables',
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('Tomato '),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('cucumber '),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         Container(
//                           width: 335.0,
//                           height: 30.0,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: <Widget>[
//                               Row(
//                                 children: <Widget>[
//                                   Padding(
//                                     padding: const EdgeInsets.all(5.0),
//                                   ),
//                                   Checkbox(
//                                       value: _value,
//                                       onChanged: (bool? value) {
//                                         setState(() {
//                                           _value = value;
//                                         });
//                                       }),
//                                   Text('lettuce '),
//                                 ],
//                               ),
//                               IconButton(
//                                 onPressed: null,
//                                 icon: Icon(
//                                   Icons.close,
//                                   color: Colors.black,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
// // Container(
// //   // Center is a layout widget. It takes a single child and positions it
// //   // in the middle of the parent.
// //   alignment: Alignment.topCenter,
// //   padding: EdgeInsets.fromLTRB(0.0, 46.0, 0.0, 0.0),
// //   child: Container(
// //     height: 24.0,
// //     width: 180.0,
// //     child: const Align(
// //       // alignment: Alignment.topCenter,
// //       child: Text(
// //         'My Grocery List',
// //         style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
// //       ),
// //     ),
// //   ),
// // ),
// // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
