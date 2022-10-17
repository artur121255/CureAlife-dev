import 'package:flutter/material.dart';
import 'package:medicalinfo2/pages/OnBoarding12.dart';
import 'package:medicalinfo2/pages/OnBoarding13.dart';
import 'package:medicalinfo2/pages/OnBoarding10.dart';
import 'package:medicalinfo2/pages/OnBoarding11.dart';
import 'package:medicalinfo2/pages/OnBoarding15.dart';
import 'package:medicalinfo2/pages/OnBoarding7.dart';
import 'package:medicalinfo2/pages/OnBoarding9.dart';
import 'package:medicalinfo2/pages/OnBoarding8.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Starter extends StatefulWidget {
  const Starter({Key? key}) : super(key: key);


  @override
  StarterState createState() => StarterState();
}

class StarterState extends State<Starter> {
  final _controller = PageController();

  _saveDataForPage(int currentPage){

  }


  _goToNextPage(){
    var currentPage = _controller.page?.floor();

    _saveDataForPage(currentPage!);

    if (currentPage < 8){
      _controller.animateToPage(currentPage+1, duration: const Duration(milliseconds: 250), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
      final PageController controller = PageController();
      return Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          title:  Center(child: Text(style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),'FreshPlate')),
        ),
        body: ListView(
      scrollDirection: Axis.vertical,
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: 600,
          child: PageView(
            controller: _controller,
            children: <Widget>[
              OnBoarding7(),
              const OnBoarding8(),
              const OnBoarding9(),
              const OnBoarding10(),
              const OnBoarding11(),
              const OnBoarding12(),
               OnBoarding13(),
             const  OnBoarding15()
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
                  padding: EdgeInsets.all(20),

                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.orangeAccent)
                  ),
                  child: Text('next'),
                ),
              ),
              SizedBox(
                height: 20,
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 7,
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

      ],
    ));
  }
}}