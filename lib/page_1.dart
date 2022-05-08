// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/painting.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_app/wifi.dart';
// import 'scene_widget.dart';
// import 'spinner1_modification.dart';
// import 'time_area.dart';
// import 'main.dart';
//
// class PageOne extends StatefulWidget {
//   @override
//   _PageOneState createState() => _PageOneState();
// }
//
// class _PageOneState extends State<PageOne> {
//   @override
//   Widget build(BuildContext context) {
//     //activePage=1;
//     //print("entering page 1");
//     // try
//     // {
//     //   timer2.cancel();
//     //
//     //   print("cancel of timerrrr 2 succes");
//     // }
//     // catch(e)
//     // {
//     //   print(e);
//     // }
//     // timer1 = new RestartableTimer(Duration(seconds: 10), (){
//     //   print("Executing timer 1 ");
//     //   try
//     //   {
//     //     timer2.cancel();
//     //     print("cancel of timer 2 succes");
//     //   }
//     //   catch(e)
//     //   {
//     //     print(e);
//     //   }
//     //   if(pageNo==0) {
//     //     pageNo=1;
//     //     // Navigator.push(
//     //     //   context,
//     //     //   MaterialPageRoute(builder: (context) => SecondRoute()),
//     //     // );
//     //     try {
//     //       Navigator.pushNamed(context, '/svr');
//     //     }
//     //     catch(e)
//     //   {
//     //     pageNo=0;
//     //     timer2.reset();
//     //     print("$e of page 1 ");
//     //   }
//     //   }
//     // }
//     // );
//     pageNo = 0;
//     return Listener(
//       // onPointerDown: (_){timer1.reset();}, // best place to reset timer imo
//       // onPointerMove: (_){timer1.reset();},
//       // onPointerUp: (_){timer1.reset();},
//       // onPointerHover: (_){timer1.reset();},
//       // onPointerSignal:(_){timer1.reset();print("ponter signal");},
//       child: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage("assets\\bgim4.png"),
//             fit: BoxFit.cover,
//           ),
//         ),
//         // color:Color.fromRGBO(25, 3, 54,1),
//         //color:Color.fromRGBO(13, 128, 51,1),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Wifi(),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.005,
//                 ),
//                 Fan(),
//                 Text(
//                   "      Porch ",
//                   style: TextStyle(
//                       color: Colors.cyan,
//                       fontFamily: "FredokaOne",
//                       fontSize: 50),
//                 ),
//
//                 // SizedBox(width: 140 ,),
//                 // SizedBox(width: 250,),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.2,
//                 ),
//                 Spinner(),
//                 // SizedBox(width: 210,),
//                 //SizedBox(width: 15,),
//                 //curtain1(),
//               ],
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height * 0.12),
//             Container(
//               height: MediaQuery.of(context).size.height * 0.2,
//               width: MediaQuery.of(context).size.width,
//               child: GridView.builder(
//                   padding:
//                       EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 5),
//                   scrollDirection: Axis.horizontal,
//                   physics: new NeverScrollableScrollPhysics(),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1,
//                     mainAxisSpacing: 20,
//                     mainAxisExtent: 232,
//                   ),
//                   itemCount: 5,
//                   itemBuilder: (BuildContext context, int index) {
//                     // print(index);
//                     return Scene(index);
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
