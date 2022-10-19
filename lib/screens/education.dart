import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          children: [
            // FittedBox(
            //   child: Image.asset('assets/Chapter_1_a.png', height: double.maxFinite,),
            //   // fit: BoxFit.fill,
            // ),
            Container(
                color: Color(0xFFF1E0D1),
                child: Image.asset('assets/Chapter_1/Chapter_1_a.png')),
            Container(
                color: Color(0xFFE08276),
                child: Image.asset('assets/Chapter_1/Chapter_1_b.png')),
            Container(
                color: Color(0xFFF1E0D1),
                child: Image.asset('assets/Chapter_1/Chapter_1_c.png')),
            Container(
                color: Color(0xFFF1E0D1),
                child: Image.asset('assets/Chapter_1/Chapter_1_d.png')),
            Container(
                color: Color(0xFFF1E0D1),
                child: Image.asset('assets/Chapter_1/Chapter_1_e.png')),
            Container(
                color: Color(0xFFF1E0D1),
                child: Image.asset('assets/Chapter_1/Chapter_1_f.png')),
            Container(
                color: Color(0xFFD5DFC8),
                child: Image.asset('assets/Chapter_2/Chapter_2_a.png')),
            Container(
                color: Color(0xFFD5DFC8),
                child: Image.asset('assets/Chapter_2/Chapter_2_b.png')),
            Container(
                color: Color(0xFFD5DFC8),
                child: Image.asset('assets/Chapter_2/Chapter_2_c.png')),
            Container(
                color: Color(0xFFD5DFC8),
                child: Image.asset('assets/Chapter_2/Chapter_2_d.png')),
            Container(
                color: Color(0xFFD5DFC8),
                child: Image.asset('assets/Chapter_2/Chapter_2_e.png')),
            Container(
                color: Color(0xFFE5EBDE),
                child: Image.asset('assets/Chapter_2/Chapter_2_f.png')),
            Container(
                color: Color(0xFFE5EBDE),
                child: Image.asset('assets/Chapter_2/Chapter_2_g.png')),
            Container(
                color: Color(0xFF9EB086),
                child: Image.asset('assets/Chapter_2/Chapter_2_h.png')),
            Container(
                color: Color(0xFFE5EBDE),
                child: Image.asset('assets/Chapter_2/Chapter_2_i.png')),
            Container(
                color: Color(0xFFD5DFC8),
                child: Image.asset('assets/Chapter_2/Chapter_2_j.png')),
            Container(
                color: Color(0xFFD5DFC8),
                child: Image.asset('assets/Chapter_2/Chapter_2_k.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_a.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_b.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_c.png')),
            Container(
                color: Color(0xFFFFD9A7),
                child: Image.asset('assets/Chapter_3/Chapter_3_d.png')),
            Container(
                color: Color(0xFFFFD9A7),
                child: Image.asset('assets/Chapter_3/Chapter_3_e.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_f.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_g.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_h.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_i.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_j.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_k.png')),
            Container(
                color: Color(0xFFFDE9CF),
                child: Image.asset('assets/Chapter_3/Chapter_3_l.png')),
            Container(
              child: SingleChildScrollView(
                  child: Image.asset('assets/frame_2/Frame 2.png')),
            ),
            Container(
              child: SingleChildScrollView(
                  child: Image.asset('assets/frame_2/Compliant_Version.png')),
            )
          ],
        ),
      ),
    );
  }
}
