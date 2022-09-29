import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 64.0,
                    backgroundColor: Colors.grey[300],
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage(
                        'https://i-cf65.ch-static.com/content/dam/cf-consumer-healthcare/health-professionals/en_IE/pain-relief/new-pain-relief/Panadol-Extra-750x421.jpg?auto=format',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Paracetamol , Phenylephrine',
                      style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                  Text('Maximum price 6 Dollar',
                      style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                  SizedBox(height: 20),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Details',
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
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Trade name ',
                          style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                      Text('Panadol sinus',
                          style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                      Text(
                        '',
                        style: Theme.of(context).textTheme.caption.copyWith(
                              height: 1.4,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Scientific name',
                          style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                      Text('Paracetamol',
                          style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                      Text(
                        '',
                        style: Theme.of(context).textTheme.caption.copyWith(
                              height: 1.4,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
            ),Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Register number',
                          style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                      Text('12-824-15',
                          style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                      Text(
                        '',
                        style: Theme.of(context).textTheme.caption.copyWith(
                              height: 1.4,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Strength',
                          style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                      Text('500.5mg',
                          style: TextStyle(fontFamily: 'Jannah', fontSize: 15)),
                      Text(
                        '',
                        style: Theme.of(context).textTheme.caption.copyWith(
                              height: 1.4,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0.0,
              ),
              child: Container(
                width: double.infinity,
                height: 1.0,
                color: Colors.grey[300],
              ),
            ),
            Column(
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
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                                      'البدائيل الدوائية',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black, fontFamily: 'Jannah',
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    Icon(Icons.medication_outlined),

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

          ],
        ),
      ),
    );
  }
}
