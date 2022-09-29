import 'package:flutter/material.dart';
import 'package:pro/out/CalResault.dart';
import 'package:pro/shared/components/components.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

class CalculatBara extends StatefulWidget {
  const CalculatBara({Key key}) : super(key: key);

  @override
  State<CalculatBara> createState() => _CalculatBaraState();
}

class _CalculatBaraState extends State<CalculatBara> {
  List<DropdownMenuItem<String>> dropdownConcentrationList = [];
  List<String> dropdownConcentration = ['120mg/5m', '125mg/5m', '160mg/5m'];
  final TextEditingController _weightController = TextEditingController();
  String selected,
      conController;
  int con = 0, weight = 0,total;
  double once = 0.0 ;
  Color c = Color.fromRGBO(22, 54, 76, 1);
  Color iconColor = Color.fromRGBO(128, 8, 0, 1);
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    loadCon();
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
          children: [
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
                      'جرعة الباراسيتامول للأطفال',
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
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SingleChildScrollView(
                child:
                Container(
                  height: 150,
                  child: Expanded(
                      child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            scaffoldKey.currentState?.showBottomSheet((context) =>
                                Container(
                                  width: double.infinity,
                                  height: 600,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.red, width: 1.2),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Center(child: Container(height: 1,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(176, 2, 2, 1),
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                ),
                                                child:

                                                CircleAvatar(backgroundColor: Color.fromRGBO(176, 2, 2, 1),radius: 4,))),
                                            SizedBox(height: 40,),
                                            Text(
                                              'معلومات هامة',
                                              style:
                                              TextStyle(color: Color.fromRGBO(176, 2, 2, 1)),
                                            ),
                                            SizedBox(height: 7,),
                                            Text(

                                              'تستخدم هذه الحاسبة لحساب الجرعة الصحيحة لدواء الباراسيتامول عن طريق الاعتماد علي وزن الطفل وذلك لتفادي حالات التسمم الناتجة عن الحساب الغير دقيق للجرعات'
                                                  '\n'
                                                  '\n',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  ),
                                              textAlign: TextAlign.right,
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            );
                          },
                          child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.warning_amber_rounded,
                                      color: Colors.white,
                                      size: 55,
                                    ),
                                    radius: 37.0,
                                    backgroundColor: Color.fromRGBO(176, 2, 2, 1),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'معلومات هامة',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [],
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.red, width: 2),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            scaffoldKey.currentState?.showBottomSheet((context) =>
                                Container(
                                  width: double.infinity,
                                  height: 600,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 30, horizontal: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.teal, width: 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Center(child: Container(height: 1,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                  color: Colors.teal,
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                ),
                                                child:

                                            CircleAvatar(backgroundColor: Colors.teal,radius: 4,))),
                                            SizedBox(height: 40,),
                                            Text(
                                              'ماذا تعرف عن الباراسيتامول ؟',
                                              style:
                                                  TextStyle(color: Colors.teal),
                                            ),
                                            SizedBox(height: 7,),
                                            Text(

                                              ' نتمي الباراسيتامول إلى مجموعة الأدوية المسكنة وغير المخدرة، فهو مسكن وخافض للحرارة واسع الاستخدام، وهو المستقلب النشط للفيناسيتين، فهو على عكس الفيناسيتين فإن الباراسيتامول لم يظهر أنه مسرطن بأي شكل من الأشكال، وهو متاح غالبًا في الصيدليات دون وصفة وطبية، ويتميز بأنه لا يسبب مشاكل أو نزيفًا في المعدة، لذلك فهو يعد ملائمًا للأشخاص الذين يعانون من القرحة المعدية. '
                                              '\n'
                                              '\n',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "ElMessiri"),
                                              textAlign: TextAlign.right,
                                            ),
                                            Text(
                                              'بعض الأسماء التجارية لدواء الباراسيتامول:   ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.right,
                                            ),
                                            SizedBox(height: 7,),

                                            Text(
                                              'PARAMOL, PEDIAMOL, EMIDOL, OMOL, DEFADOL, '
                                              '\n'
                                              ' CALPOL, PANADOL, REVANIN, PANADREX, ADOL,'
                                              '\n'
                                              ' FEVADOL, TYLENOL',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: "ElMessiri"),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            );
                          },
                          child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  CircleAvatar(
                                    child: Icon(
                                      Icons.medical_information_outlined,
                                      color: Colors.white,
                                      size: 55,
                                    ),
                                    radius: 37.0,
                                    backgroundColor:
                                        Color.fromRGBO(22, 54, 76, 1),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'ماذا تعرف عن الباراسيتامول',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 5),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [],
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.teal, width: 2),
                              )),
                        ),
                      ),
                    ],
                  )
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'تركيز الباراسيتامول',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1)),
                        child:Directionality(
                          textDirection: TextDirection.rtl,
                          child: new DropdownButton(
                            value: selected,
                            items: dropdownConcentrationList,
                            hint: SizedBox(width: double.infinity,
                                child: new Text("كغم",textAlign: TextAlign.right,)),
                            isExpanded: true,
                            iconSize: 15,
                            iconEnabledColor: Colors.black,
                            elevation: 20,
                            style: TextStyle(color: Colors.black),
                            // underline: Container(
                            //   height: 1,
                            //   color: Colors.grey,
                            // ),
                            onChanged: (ConValue) {
                              selected = ConValue;
                              setState(() {
                                conController = ConValue;
                              });
                            },

                            //icon: SizedBox(width: 50,
                            //child: Icon(Icons.arrow_downward_sharp)),

                          ),
                        ),

                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'الوزن',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),
                  // TextField(
                  //   textAlign: TextAlign.right,
                  //   decoration: InputDecoration(
                  //   ),
                  //   keyboardType: TextInputType.numberWithOptions(),
                  //   controller: _weightController,
                  // ),

                  defaultFormField(

                    controller: _weightController,
                    type: TextInputType.numberWithOptions(),
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'please enter your email address';
                      }
                    },
                    label: '',
                    prefix: Icons.monitor_weight_outlined,
                  ),
                ],

              ),
            ),
            Container(
              width: 300,
              height: 50.0,
              child: MaterialButton(
                onPressed: (){
                  onpress();
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>calresault(
                    total: total.round(),
                    once: once.round(),
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

  void loadCon() {
    dropdownConcentrationList = [];
    dropdownConcentrationList = dropdownConcentration
        .map((values) => new DropdownMenuItem<String>(
      child: SizedBox(
          width: double.infinity,
          child: new Text(values,textAlign: TextAlign.right,)),
      value: values,
    ))
        .toList();
  }

  int onpress() {
    setState(() {
      weight = int.parse(_weightController.text);

      if (conController == "120mg/5m") {
        once = (0.5 * weight) ;
      }
      else if (conController == "125mg/5m") {

        once = (0.48 * weight) ;

      }
      else if (conController == "160mg/5m") {

        once = (0.375 * weight) ;
      }
      total = (once.round() * 5);

    }
    );

  }


}
