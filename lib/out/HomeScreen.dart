import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/out/MyAccount.dart';
import 'package:pro/out/Myitems.dart';
import 'package:pro/out/Search.dart';
import 'package:pro/out/Services.dart';
import 'package:pro/out/barcodtest.dart';

class hme extends StatefulWidget {
  const hme({Key key}) : super(key: key);

  Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  _BottomNavBarRaisedInsetFb1State createState() =>
      _BottomNavBarRaisedInsetFb1State();
}

class _BottomNavBarRaisedInsetFb1State extends State<hme> {
  List<Widget> screens = [
    MyAccount(),
    MyItems(),
    barcod(),
    SearchScreen(),
    Services(),

  ];
  int CurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        titleTextStyle: TextStyle(fontWeight: FontWeight.w900,fontStyle:FontStyle.italic,fontSize: 17),
        title: Column(
          children: [
            SizedBox(height:7),
            Center(child:
            Text(
              ' Discover',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            ),
          ],
        ),
      ),
      body:screens[CurrentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color.fromRGBO(22, 54, 76, 1),
          iconSize: 30,
          selectedItemColor: Colors.teal,

          type: BottomNavigationBarType.fixed,
          currentIndex: CurrentIndex,
          onTap: (index) {
            setState(() {
              CurrentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'person',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.my_library_add,
              ),
              label: 'my library',
            ),
            BottomNavigationBarItem(



              icon:CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 40.0,
                child: CircleAvatar(
                  radius: 45.0,
                  child: Icon(Icons.qr_code_scanner,  size: 55,color: Colors.white,),

                ),
              ),



              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(

              icon: Icon(
                Icons.category,
              ),
              label: 'category',

            )
          ]),
    );
  }
}
