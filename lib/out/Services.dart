import 'package:flutter/material.dart';
import 'package:pro/main.dart';
import 'package:pro/modules/social_app/feeds/feeds_screen.dart';
import 'package:pro/modules/social_app/social_login/social_login_screen.dart';
import 'package:pro/out/BmrScreen.dart';
import 'package:pro/out/CalculatBara.dart';

class Services extends StatefulWidget {
  const Services({Key key}) : super(key: key);

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  Color color = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15,
                          offset: Offset(5, 5),

                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          offset: Offset(-5, -5),

                        ),
                      ],
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15,
                          offset: Offset(5, 5),

                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          offset: Offset(-5, -5),

                        ),
                      ],
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
                  'الخدمات',
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Expanded(
              child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CalculatBara()));
                },
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade500,
                          blurRadius: 15,
                          offset: Offset(5, 5),

                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 15,
                          offset: Offset(-5, -5),

                        ),
                      ],
                      borderRadius: BorderRadius.circular(15), color: color),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Icon(
                        Icons.medication_outlined,
                        size: 40,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text(
                              'حاسبة جرعة الباراسيتامول للأطفال',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 110,
                child: Expanded(
                    child: Row(
                  children: [
                    Expanded(child:
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SocialLoginScreen()));
                        },
                        child: Container(
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [

                              Icon(Icons.network_wifi_sharp,size: 35,color:Colors.white),
                              Text(
                                'تواصل معنا',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.arrow_circle_left_outlined,
                                        size: 25,
                                        color: Colors.white),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 15,
                                  offset: Offset(5, 5),

                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15,
                                  offset: Offset(-5, -5),

                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child:
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MetricSystem()));
                        },
                        child: Container(
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children:
                            [

                              Icon(Icons.calculate_rounded,size: 35,color:Colors.white),
                              Text(
                                ' حاسبة السعرات الحرارية',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.arrow_circle_left_outlined,
                                        size: 25,
                                        color: Colors.white),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade500,
                                  blurRadius: 15,
                                  offset: Offset(5, 5),

                                ),
                                BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15,
                                  offset: Offset(-5, -5),

                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.teal),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FeedsScreen()));
                    },
                    child: Container(
                      width: 190,
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [

                          Icon(Icons.network_wifi_sharp,size: 35,color:Colors.white),
                          Text(
                            'News',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.arrow_circle_left_outlined,
                                    size: 25,
                                    color: Colors.white),
                              ],
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              blurRadius: 15,
                              offset: Offset(5, 5),

                            ),
                            BoxShadow(
                              color: Colors.white,
                              blurRadius: 15,
                              offset: Offset(-5, -5),

                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ],
          )
          ),
        ),
      ],
    );
  }
}
