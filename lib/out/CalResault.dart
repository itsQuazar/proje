import 'package:flutter/material.dart';

class calresault extends StatelessWidget {  Color c = Color.fromRGBO(22, 54, 76, 1);
var scaffoldKey = GlobalKey<ScaffoldState>();
final total ;
final once;

calresault({
  this.total,
  this.once
});
@override
Widget build(BuildContext context) {
  return Scaffold(

    key: scaffoldKey,
    appBar: AppBar(
      // elevation: 10,
      // shadowColor: Colors.teal,
      // titleTextStyle: TextStyle(fontWeight: FontWeight.w900,fontStyle:FontStyle.italic,fontSize: 17),
      //
      // backgroundColor: Color.fromRGBO(22, 54, 76, 1),
      // title: Column(
      //   children: [
      //     Icon(Icons.content_paste_search),
      //     SizedBox(height:7),
      //     Center(child: Text('Discover')),
      //   ],
      // ),
    ),
    body: Column(
      children: [

        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
            Row(
              children: [
                Text(
                  'النتيجة',
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
        Container(
          width: double.infinity,
          height: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 30, horizontal: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Colors.teal, width: 1.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 40,),
                    Text(
                      'الجرعة الواحدة القصوة بالمللتر  $once',
                      style:
                      TextStyle(color: Colors.teal,fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 7,),
                    Text(
                        ' يعطي هذا الدواء كل 4-6 ساعات . 5 مرات في اليوم كحد اقصي عند الحاجه . يجب ان لا يعطي أكثر من 5 مرات خلال 24 ساعة'
                     , style:
                      TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.right
                    ),
                    SizedBox(height: 20,),
                    Text(
                        'الجرعة القصوي اليوم بالمللتر $total',
                      style:
                      TextStyle(color: Colors.teal,fontSize: 18,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'الجرعة القصوي هي مجموع الجرعات المحددة خلال اليوم الواحد بالمملتر' ,
                      style:
                      TextStyle(color: Colors.black,fontSize: 15,),textAlign: TextAlign.right
                    ),


                  ],
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
