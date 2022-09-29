import 'package:flutter/material.dart';
import 'package:pro/out/CalculatBara.dart';
import 'package:pro/out/Product.dart';

class MyItems extends StatefulWidget {
  const MyItems({Key key}) : super(key: key);


  @override
  State<MyItems> createState() => _MyItemsState();
}

class _MyItemsState extends State<MyItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Product()));
              },
              child: Expanded(

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white,
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

                        borderRadius: BorderRadius.circular(20),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        SizedBox(
                          width: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Text(
                                'PANADOL SINUS RELIEF',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black, fontFamily: 'Jannah',
                                ),
                              ),

                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),

    );
  }
}
