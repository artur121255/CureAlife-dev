// import 'package:medicalinfo2/screens/banana chia pudding.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../main.dart';
import 'dayTwo.dart';

class dayOne extends StatefulWidget {
  const dayOne({Key? key}) : super(key: key);

  @override
  _dayOneState createState() => _dayOneState();
}
class _dayOneState extends State<dayOne> {
  //==========================================

  late Future<ListResult>futureFliles;
  //============================================================
  @override
  void initState(){
    super.initState();
    futureFliles=FirebaseStorage.instance.ref('/images').listAll();
    _streamProducts = _products.snapshots();

  }
//=============================================================
  final CollectionReference _products = FirebaseFirestore.instance.collection(
      'mealPlan_Day1');
  late Stream <QuerySnapshot>_streamProducts;

  @override
  Widget build(BuildContext context) {
    _products.get();
    _products.snapshots();

    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _streamProducts,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          if (snapshot.connectionState == ConnectionState.active) {
            QuerySnapshot querySnapshot = snapshot.data;
            num calTotal=0;
            var carbsTotal=0.0;
            var fatTotal=0.0;
            var fibreTotal=0.0;
            var proteinTotal=0.0;


            for (var doc in querySnapshot!.docs) {

              calTotal = calTotal + doc["Cal"];
              carbsTotal = (carbsTotal + doc["Carbs"]);
              fatTotal = fatTotal + doc["Fat"];
              fibreTotal = fibreTotal + doc["Fibre"];
              proteinTotal = proteinTotal + doc["Protein"];

            }
            var totCarbs=double.parse(carbsTotal.toStringAsFixed(2));
            var totFat=double.parse(fatTotal.toStringAsFixed(2));
            var totFibre=double.parse(fibreTotal.toStringAsFixed(2));
            var totProtein=double.parse(proteinTotal.toStringAsFixed(2));

            List<QueryDocumentSnapshot>listQueryDocumentSnapshot=querySnapshot.docs;
//============================



//============================
            Map<String, double> dataMap = {
              "Carbs": totCarbs,
              "Fat": totFat,
              "Protein": totProtein,
              "Fibre": totFibre,
            };

            // create a list which contain the summation of values
            List<double> allValueList = dataMap.values.toList();



//=============================
            return ListView.builder(
              itemCount: listQueryDocumentSnapshot==null?1:listQueryDocumentSnapshot.length+1,
              itemBuilder:(context,index){
                if(index==0){
                  return Column(
                      children: [
                        const SizedBox(height: 40),

                        Center(

                          child: Column(
                            children: [
                              Text(
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                  'Meal Plan '
                              ),

                              const SizedBox(height: 20),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [


                                  Text(
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800),
                                      'DAY 1 '
                                  ),
                                  TextButton(onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => dayTwo()),
                                  ),
                                      child: Icon(Icons.arrow_forward_ios)),

                                ],
                              ),
                              const SizedBox(height: 20),

                            ],
                          ),

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(width: 35),

                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: <Widget>[


                                  Text(
                                      style: TextStyle(
                                        color: Color(0xff1E3023),
                                        fontFamily: 'Montserrat',
                                        fontStyle: FontStyle.normal,

                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffEB9183),
                                      ),
                                      'Carbs | ${allValueList[0]}'
                                  ),
                                  const SizedBox(height: 30),

                                  Text(
                                      style: TextStyle(
                                        color: Color(0xff1E3023),
                                        fontFamily: 'Montserrat',
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xff99B182),
                                      ),
                                      ' Fat |  ${allValueList[1]}'
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                      style: TextStyle(
                                        color: Color(0xff1E3023),
                                        fontFamily: 'Montserrat',
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffE7C851),
                                      ),
                                      'Protein | ${allValueList[2]}'
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                      style: TextStyle(
                                        color: Color(0xff1E3023),
                                        fontFamily: 'Montserrat',
                                        fontStyle: FontStyle.normal,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Color(0xffE09167),
                                      ),
                                      'Fibre | ${allValueList[3]}'
                                  ),
                                ]
                            ),

                            const SizedBox(width: 30),

                            Column(

                              children: [
                                const SizedBox(height: 40),

                                Stack(
                                  children:<Widget>[

                                    PieChart(

                                      dataMap: dataMap,
                                      animationDuration: Duration(milliseconds: 800),
                                      // chartLegendSpacing: 32,
                                      //chartRadius: MediaQuery.of(context).size.width / 3.2,
                                      chartRadius: 170,
                                      // colorList: colorList,
                                      initialAngleInDegree: 0,
                                      chartType: ChartType.ring,
                                      ringStrokeWidth: 10.18,

                                      centerText: ("${calTotal}\n"),
                                      centerTextStyle:TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        color: Color(0xff1E3023),
                                      ),


                                      legendOptions: const LegendOptions(

                                        showLegendsInRow: false,
                                        legendPosition: LegendPosition.left,


                                        showLegends: false,
                                        // legendShape: _BoxShape.circle,
                                        legendTextStyle: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16,
                                          //fontFamily: Montserrat,
                                        ),
                                      ),
                                      chartValuesOptions: ChartValuesOptions(
                                        showChartValueBackground: false,
                                        showChartValues: false,
                                        showChartValuesInPercentage: false,
                                        showChartValuesOutside: false,
                                        decimalPlaces: 1,
                                      ),
                                      // gradientList: ---To add gradient colors---
                                      // emptyColorGradient: ---Empty Color gradient---
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(width: 65),
                                        Text(
                                            style: TextStyle(

                                              color:Color.fromRGBO(0, 0, 0, 0.5),
                                              fontFamily: 'Montserrat',
                                              fontStyle: FontStyle.normal,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              decoration: TextDecoration.underline,
                                              decorationColor: Color(0xffE09167),

                                            ),
                                            'Calories'
                                        ),
                                        const SizedBox(height: 220),


                                      ],
                                    ),

                                  ],
                                ),
                              ],
                            ),

                          ],
                        ),

                        const SizedBox(width: 30)

                      ]
                  );
                }

                index -= 1;

                QueryDocumentSnapshot document=listQueryDocumentSnapshot[index];
                var page_name=Text(document['name']);

                Center(

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: const [
                      Icon(Icons.arrow_back_ios),

                      Text(
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                          'DAY 1 '
                      ),
                      Icon(Icons.arrow_forward_ios),


                    ],
                  ),
                );


                return

                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[

                        //==============================================================

                        const SizedBox(height: 20),

                        // The header will be here

//===================================================
                        Card(
                          margin:const EdgeInsets.all(10),
                          child:Column(
                            children: [

                              Container(
                                height: 200,
                                width: 340,

                                child: Container(
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 10),

                                      Text(document['type'],
                                        style: TextStyle(

                                          color: Colors.grey[800],
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  margin: EdgeInsets.only(top: 20, right: 190,bottom: 150),

                                  decoration: new BoxDecoration(

                                    color: Colors.white,

                                    image : new DecorationImage(
                                      image: new ExactAssetImage('assets/Rectangle.png'),

                                      fit: BoxFit.scaleDown,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20),


                                    ),

                                  ),
                                ),
                                decoration: BoxDecoration(
                                  image : DecorationImage(
                                    // image: new ExactAssetImage('assets/breakfast.png'),
                                    image: NetworkImage(document['image']),

                                    fit: BoxFit.cover,
                                  ),
                                  border: Border.all(color: Colors.black12, width: 1),

                                ),


                              ),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,

                                children: [
                                  const SizedBox(width: 45),

                                  Text(document['name'],

                                    style: TextStyle(

                                      color:Color.fromRGBO(0, 0, 0, 0.5),
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,

                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),

//=============================================================
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  const SizedBox(width: 45),
                                  Icon(Icons.run_circle_outlined),
                                  // Text(
                                  //     '300 kcal'
                                  // ),
                                  Text((document['Cal'].toString()+'  kcal'),
                                    style: TextStyle(

                                      color:Color.fromRGBO(0, 0, 0, 0.5),
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,

                                    ),
                                  ),
                                  const SizedBox(width: 70),
                                  Icon(Icons.access_alarm),
                                  // Text(
                                  //     '15 min'
                                  // ),
                                  Text((document['time'].toString()+'  min'),
                                    style: TextStyle(

                                      color:Color.fromRGBO(0, 0, 0, 0.5),
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,

                                    ),
                                  ),

                                  const SizedBox(width: 8),
                                ],
                              ),

                              Row(


                                children: [
                                  SizedBox(width: 45),
                                  Text('Carbs:  '+document['Carbs'].toString()+'g',
                                    style: TextStyle(

                                      color:Color.fromRGBO(0, 0, 0, 0.5),
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,

                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text('Fibre:  '+document['Fibre'].toString()+'g',
                                    style: TextStyle(

                                      color:Color.fromRGBO(0, 0, 0, 0.5),
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,

                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(('Protein:  '+document['Protein'].toString()+'g'),
                                    style: TextStyle(

                                      color:Color.fromRGBO(0, 0, 0, 0.5),
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,

                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text('Fat:  '+document['Fat'].toString()+'g',
                                    style: TextStyle(

                                      color:Color.fromRGBO(0, 0, 0, 0.5),
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,

                                    ),
                                  ),
                                  SizedBox(height: 20),

                                ],
                              ),
                              SizedBox(height: 20),


                            ],
                          ),

                        ),



//============================================================
                        const SizedBox(height: 20),
//===================================================

                      ],
                    ),
                  );
                Text(document['name']);
              },

            );
          }
          return Center(child: CircularProgressIndicator());
        },

        //Calculate tot of nutrition values


      ),


    ); //
  }
}
