import 'package:flutter/material.dart';
import 'package:pro/out/BmrResault.dart';
import 'package:pro/shared/components/components.dart';


class MetricSystem extends StatefulWidget {
  @override
  _MetricSystemState createState() => _MetricSystemState();
}

class _MetricSystemState extends State<MetricSystem> {
  Color c = Color.fromRGBO(22, 54, 76, 1);
  var scaffoldKey = GlobalKey<ScaffoldState>();
  List<DropdownMenuItem<String>> dropdownGenderList = [];
  List<DropdownMenuItem<String>> dropdownActivityList = [];
  List<String> dropdownGender = ["أنثي", "ذكر"];

  List<String> dropdownActivity = [
    "خامل",
    "قليل النشاط",
    "نشط من حين الي لأخر",
    "نشط جدا",
    "نشط للغاية"
  ];
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  String selected,
      selected1,
      selected2,
      genderController,
      equationController,
      activityController;
  int age = 0, height = 0, weight = 0, bmrTotal = 0, calories = 0;
  double bmrDouble = 0.0, caloriesDouble;

  @override
  Widget build(BuildContext context) {
    loadGender();
    //loadEquation();
    loadActivity();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        key: scaffoldKey,
        appBar: AppBar(

          titleTextStyle: TextStyle(fontWeight: FontWeight.w900,fontStyle:FontStyle.italic,fontSize: 17),
          title: Column(
            children: [
              SizedBox(height:7),
              // Text(
              //   ' Discover',
              //   style: TextStyle(
              //       fontSize: 25,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.black),
              // ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 10,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Colors.teal[200],
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'حاسبة السعرات الحرارية',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '',
              style: TextStyle(fontSize: 10),
            ),
            Container(
              color: Colors.grey[300],
              width: double.infinity,
              height: 2,
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Directionality(
                  //   textDirection: TextDirection.rtl,
                  //   child: new DropdownButton(
                  //     value: selected,
                  //     items: dropdownGenderList,
                  //     hint: SizedBox(width: double.infinity,
                  //         child: new Text("Gender",textAlign: TextAlign.right,)),
                  //     isExpanded: true,
                  //     iconSize: 15,
                  //     iconEnabledColor: Colors.black,
                  //     elevation: 20,
                  //     style: TextStyle(color: Colors.black),
                  //     underline: Container(
                  //       height: 2,
                  //       color: Colors.grey,
                  //     ),
                  //     onChanged: (genderValue) {
                  //       selected = genderValue;
                  //       setState(() {
                  //         genderController = genderValue;
                  //       });
                  //     },
                  //
                  //     //icon: SizedBox(width: 50,
                  //         //child: Icon(Icons.arrow_downward_sharp)),
                  //
                  //   ),
                  // ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      child:Directionality(
                        textDirection: TextDirection.rtl,
                        child: new DropdownButton(
                          value: selected,
                          items: dropdownGenderList,
                          hint: SizedBox(width: double.infinity,
                              child: new Text("Gender",textAlign: TextAlign.right,)),
                          isExpanded: true,
                          iconSize: 15,
                          iconEnabledColor: Colors.black,
                          elevation: 20,
                          style: TextStyle(color: Colors.black),
                          // underline: Container(
                          //   height: 1,
                          //   color: Colors.grey,
                          // ),
                          onChanged: (genderValue) {
                            selected = genderValue;
                            setState(() {
                              genderController = genderValue;
                            });
                          },

                          //icon: SizedBox(width: 50,
                          //child: Icon(Icons.arrow_downward_sharp)),

                        ),
                      ),

                    ),
                  ),
SizedBox(height: 20,),
                  TextField(
                    textAlign: TextAlign.right,
                    style: new TextStyle(
                        fontSize: 15.0, height: 1.5, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'العمر',
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                    ),
                    keyboardType: TextInputType.numberWithOptions(),
                    controller: _ageController,
                  ),
                  SizedBox(height: 20,),

                  TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(

                      hintText: 'الطول',
                    ),
                    keyboardType: TextInputType.numberWithOptions(),
                    controller: _heightController,
                  ),
                  SizedBox(height: 20,),

                  TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'الوزن',
                    ),

                    keyboardType: TextInputType.numberWithOptions(),
                    controller: _weightController,
                  ),
                  SizedBox(height: 20,),

                  // Directionality(
                  //   textDirection: TextDirection.rtl,
                  //   child: new DropdownButton(
                  //     value: selected2,
                  //     items: dropdownActivityList,
                  //     hint: SizedBox(width: double.infinity,
                  //       child: new Text("معدل النشاط",textAlign: TextAlign.right,)),
                  //     isExpanded: true,
                  //     iconSize: 15,
                  //     iconEnabledColor: Colors.black,
                  //     elevation: 20,
                  //     style: TextStyle(color: Colors.black),
                  //     underline: Container(
                  //       height: 2,
                  //       color: Colors.grey,
                  //     ),
                  //     onChanged: (activityChoice) {
                  //       selected2 = activityChoice;
                  //       setState(() {
                  //         activityController = activityChoice;
                  //       });
                  //     },
                  //   ),
                  // ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1)),
                      child:Directionality(
                        textDirection: TextDirection.rtl,
                        child: new DropdownButton(
                          value: selected2,
                          items: dropdownActivityList,
                          hint: SizedBox(width: double.infinity,
                              child: new Text("معدل النشاط",textAlign: TextAlign.right,)),
                          isExpanded: true,
                          iconSize: 15,
                          iconEnabledColor: Colors.black,
                          elevation: 20,
                          style: TextStyle(color: Colors.black),
                          // underline: Container(
                          //   height: 1,
                          //   color: Colors.grey,
                          // ),
                          onChanged: (activityChoice) {
                            selected2 = activityChoice;
                            setState(() {
                              activityController = activityChoice;
                            });
                          },

                          //icon: SizedBox(width: 50,
                          //child: Icon(Icons.arrow_downward_sharp)),

                        ),
                      ),

                    ),
                  ),

                ],
              ),
            ),
        Container(
          width: 300,
          height: 50.0,
          child: MaterialButton(
            onPressed: (){
               _onPress();
               Navigator.push(context, MaterialPageRoute(builder: (context)=>bmrresault(
                 bmrTotal: bmrTotal,
                 calories: calories,
               ),
    ),
               );
    },
            child: Text('حساب',

              style: TextStyle(
                color: Colors.white,fontSize: 20,
              ),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular( 20.0,
            ),
            color: Colors.teal,
          ),
        ),

          ],
        )
    );
  }

  void loadGender() {
    dropdownGenderList = [];
    dropdownGenderList = dropdownGender
        .map((values) => new DropdownMenuItem<String>(
              child: SizedBox(
                width: double.infinity,
                  child: new Text(values,textAlign: TextAlign.right,)),
              value: values,
            ))
        .toList();
  }


  void loadActivity() {
    dropdownActivityList = [];
    dropdownActivityList = dropdownActivity
        .map((values) => new DropdownMenuItem<String>(
      child: SizedBox(
          width: double.infinity,
          child: new Text(values,textAlign: TextAlign.right,)),
              value: values,
            ))
        .toList();
  }

  int _onPress() {
    setState(() {
      age = int.parse(_ageController.text);
      height = int.parse(_heightController.text);
      weight = int.parse(_weightController.text);

      if (genderController == "ذكر") {

          bmrDouble = (10 * weight) + (6.25 * height) - (5 * age) + 5;


      }
      else if (genderController == "أنثي") {

          bmrDouble = (10 * weight) + (6.25 * height) - (5 * age) - 161;

      }
      bmrTotal = (bmrDouble.round());
      if (activityController == "خامل") {
        caloriesDouble = (bmrTotal * 1.2);
      } else if (activityController == "قليل النشاط") {
        caloriesDouble = (bmrTotal * 1.375);
      } else if (activityController == "نشط من حين الي لأخر") {
        caloriesDouble = (bmrTotal * 1.55);
      } else if (activityController == "نشط جدا") {
        caloriesDouble = (bmrTotal * 1.725);
      } else if (activityController == "نشط للغاية") {
        caloriesDouble = (bmrTotal * 1.9);
      }
      calories = (caloriesDouble.round());

      //resault();
    }

    );

  }


}
