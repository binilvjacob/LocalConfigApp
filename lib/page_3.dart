import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/scene_widget_p3.dart';
import 'package:flutter_app/wifi.dart';
import 'spinner1_modification_p3.dart';
import 'time_area.dart';
import 'main.dart';
import 'curtain.dart';

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    // try
    // {
    //   timer1.cancel();
    //   print("cancel of timerrr 1  succes");
    // }
    // catch(e)
    // {
    //   print(e);
    // }
    // timer2 = new RestartableTimer(Duration(seconds: 10), (){
    //   print("Executing timer 2 and pageNo is $pageNo");
    //   if(pageNo==0) {
    //     try
    //     {
    //       timer1.cancel();
    //       print("cancel of tiemer 1  succes");
    //     }
    //     catch(e)
    //     {
    //       print(e);
    //     }
    //     pageNo=1;
    //     // Navigator.push(
    //     //   context,
    //     //   MaterialPageRoute(builder: (context) => SecondRoute()),
    //     // );
    //     try {
    //       Navigator.pushNamed(context, '/svr');
    //     }
    //     catch(e)
    //   {
    //     pageNo=0;
    //     timer1.reset();
    //     print("$e of page 2");
    //   }
    //   }
    // }
    // );
    //active_page=2;
    // print("entering page 2");
    pageNo = 2;
    return Listener(
      // onPointerDown: (_){timer2.reset();}, // best place to reset timer imo
      // onPointerMove: (_){timer2.reset();},
      // onPointerUp: (_){timer2.reset();},
      // onPointerHover: (_){timer2.reset();},
      // onPointerSignal:(_){timer2.reset();print("ponter signal");},
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets\\bgim4.png"),
            fit: BoxFit.cover,
          ),
        ),
        // color:Color.fromRGBO(25, 3, 54,1),
        //color:Color.fromRGBO(13, 128, 51,1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Wifi(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.005,
                ),
                Fan(),
                Text(
                  "Open \n Rest. ",
                  style: TextStyle(
                      color: Colors.cyan,
                      fontFamily: "FredokaOne",
                      fontSize: 50),
                ),
                // SizedBox(width: 140 ,),
                SizedBox(
                  width: 95,
                ),
                Curtain1(),
                SizedBox(
                  width: 10,
                ),
                SpinnerP3(),
                // SizedBox(width: 210,),
                SizedBox(
                  width: 5,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.12),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 5),
                  scrollDirection: Axis.horizontal,
                  physics: new NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 232,
                  ),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    // print(index);
                    return Scene_p3(index);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
