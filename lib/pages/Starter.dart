import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding12.dart';
import 'package:medicalinfo2/pages/OnBoarding13.dart';
import 'package:medicalinfo2/pages/OnBoarding10.dart';
import 'package:medicalinfo2/pages/OnBoarding11.dart';
import 'package:medicalinfo2/pages/OnBoarding15.dart';
import 'package:medicalinfo2/pages/OnBoarding7.dart';
import 'package:medicalinfo2/pages/OnBoarding9.dart';
import 'package:medicalinfo2/pages/OnBoarding8.dart';
import 'package:medicalinfo2/pages/onBoarding2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Starter extends StatefulWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  StarterState createState() => StarterState();
}

class StarterState extends State<Starter> {
  final _controller = PageController();

  // final medicalInfo = [];
  // StarterState( this.medicalInfo);

  _saveDataForPage(int currentPage) {}

  _goToNextPage() {
    var currentPage = _controller.page?.floor();

    _saveDataForPage(currentPage!);

    if (currentPage < 11) {
      _controller.animateToPage(currentPage + 1,
          duration: const Duration(milliseconds: 250), curve: Curves.easeInOut);
    }
  }

  // Color _getColorForPage( currentPage){
  //   if (){
  //     return Colors.orange;
  //   } else{
  //     return Colors.white;
  //   }
  // }
  // changeAppBarColor(currentPage){
  //   if (currentPage==2){
  //     return Colors.orange;
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
              child: Text(
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  'FreshPlate')),
        ),
        body: Column(

          // scrollDirection: Axis.vertical,
          // physics: const AlwaysScrollableScrollPhysics(),
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: PageView(
                controller: _controller,
                children: <Widget>[
                  const OnBoarding2(),
                  OnBoarding7(),
                  const OnBoarding8(),
                  const OnBoarding9(),
                  const OnBoarding10(),
                  const OnBoarding11(),
                  const OnBoarding12(),
                  OnBoarding13(),
                  const OnBoarding15()
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => _goToNextPage(),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 30,
                      padding: EdgeInsets.all(20),
                      alignment: Alignment.center,

                      // alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.orangeAccent)),
                      child: Text('next'),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 20,
                    child: SmoothPageIndicator(
                      controller: _controller,
                      count: 12,
                      effect: JumpingDotEffect(
                        activeDotColor: Colors.orange,
                        dotColor: Colors.deepPurple.shade100,
                        dotHeight: 15,
                        dotWidth: 15,
                        spacing: 16,
                        //verticalOffset: 50,
                        jumpScale: 3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // BottomNavigationBar(
            //     backgroundColor: Colors.white,
            //     type: BottomNavigationBarType.shifting,
            //     items: [
            //       BottomNavigationBarItem(
            //           icon:Icon(Icons.home, color: Color.fromARGB(255, 255, 255, 255)
            //
            //           ),
            //
            //
            //           backgroundColor: Colors.red),
            //       BottomNavigationBarItem(
            //           icon: Icon(Icons.work,color: Color.fromARGB(255, 255, 255, 255)),
            //           backgroundColor: Colors.blue),
            //       BottomNavigationBarItem(
            //           icon:Icon(Icons.face, color: Color.fromARGB(255, 255, 255, 255)),
            //           backgroundColor: Colors.amber),
            //     ]
            //
            //
            // )],
        ]));
  }
}
