import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding2.dart';
import 'package:medicalinfo2/pages/OnBoarding3.dart';
import 'package:medicalinfo2/pages/OnBoarding7.dart';
import 'package:medicalinfo2/pages/Starter.dart';
import 'package:medicalinfo2/pages/onBoarding4.dart';
import 'package:medicalinfo2/pages/OnBoarding5.dart';
import 'package:medicalinfo2/pages/OnBoarding6.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StarterOnBoarding extends StatefulWidget {
  const StarterOnBoarding({Key? key}) : super(key: key);

  @override
  StarterOnBoardingState createState() => StarterOnBoardingState();
}

class StarterOnBoardingState extends State<StarterOnBoarding> {
  final _controller = PageController();

  // final medicalInfo = [];
  // StarterState( this.medicalInfo);

  _saveDataForPage(int currentPage) {}

  _goToNextPage() {
    var currentPage = _controller.page?.floor();

    _saveDataForPage(currentPage!);

    if (currentPage < 4) {
      _controller.animateToPage(currentPage + 1,
          duration: const Duration(milliseconds: 250), curve: Curves.easeInOut);
    }
    if (currentPage == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Starter()));
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
        backgroundColor: Color.fromARGB(255, 168, 157, 156),
        body: Column(

            // scrollDirection: Axis.vertical,
            // physics: const AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: PageView(
                  controller: _controller,
                  children: <Widget>[
                    const OnBoarding2(),
                    const OnBoarding3(),
                    const OnBoarding4(),
                    const OnBoarding5(),
                    const OnBoarding6(),
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
                        alignment: Alignment.center,

                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white)),
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize:20),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 20,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 5,
                        effect: JumpingDotEffect(
                          activeDotColor: Color(0xffF9F9F91E3023),
                          dotColor: Color(0xffF9F9F9),
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
