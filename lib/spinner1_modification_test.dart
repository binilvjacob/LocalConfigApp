//
// import 'package:flutter/material.dart';
// import 'package:flutter_app/configip.dart';
// import 'package:flutter/rendering.dart';
// import 'package:sleek_circular_slider/sleek_circular_slider.dart';
// import 'main.dart';
// import 'package:flutter/cupertino.dart';
// import 'dart:async';
// import 'configip.dart';
// //import 'tcp_socket_experiments.dart';
// import 'http_client.dart';
//
//
// Color iconColor= Colors.yellowAccent;
// double opac=1;
// int master_flag=0;
// var duration3=Duration(milliseconds:250);
// Timer timer3;
// double slider_dummy_val=0;
// double dummy2=0.0;
//
//
// //Timer timer5;
//
// class SpinnerTest extends StatefulWidget {
//   int pageNo;
//   SpinnerTest(this.pageNo);
//
//   @override
//   _SpinnerTestState createState() => _SpinnerTestState();
// }
// int endTime;
// int outBedTime=0;
// int temp;
// double slider_opac;
// class _SpinnerTestState extends State<SpinnerTest> {
//
//   final baseColor = Color.fromRGBO(255, 255, 255, 0.3);
//   int initTime=0;
//   int inBedTime=0;
//   var master_light_pressed=0;
//
//   @override
//   void initState() {
//     print("page number under test is : ${widget.pageNo}");
//     super.initState();
//     try
//     {
//       timer3.cancel();
//     }
//     catch(e)
//     {
//
//     }
//   }
//   @override
//   void dispose()
//   {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       StreamBuilder<Object>(
//           stream: light_slider_controller.stream,
//           initialData: 3,
//           builder: (context, snapshot) {
//             return(
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     SizedBox(height: 15,),
//                     StreamBuilder<int>(
//                         initialData: 2,
//                         stream: master_on_controller.stream,
//                         builder: (context, snapshot) {
//                           return Container(
//                             width: 237,
//                             height: 160,
//                             margin: const EdgeInsets.all(1.0),
//                             padding: const EdgeInsets.all(1.0),
//                             decoration: BoxDecoration(
//                                 color: Color.fromRGBO(27, 89, 135,1).withOpacity(0.6),
//                                 border: Border.all(color: master_on_border_color,width: 2),
//                                 borderRadius: BorderRadius.all(Radius.circular(15))
//                             ),
//                             child: RaisedButton(
//                               elevation: 10,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   side: BorderSide(color: Colors.transparent)
//                               ),
//                               splashColor: Colors.blue.withOpacity(0.2),
//                               onPressed: (){
//                                 activePage=0;
//                                 master_on_control();
//                               },
//                               color:Color.fromRGBO(27, 89, 135,1).withOpacity(0.6),
//                               textColor: Colors.white,
//                               child:
//                               Column(
//                                 children: [
//                                   SizedBox(height: 20,),
//                                   IconButton(
//                                     icon: Icon(Icons.wb_incandescent),
//                                     color: Colors.green,
//                                     highlightColor: Colors.red,
//                                     disabledColor: Colors.yellowAccent.withOpacity(0.8),
//                                     iconSize: 70,
//                                   ),
//                                   Text(
//                                     'ON',
//                                     style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 20,fontFamily: 'FredokaOne'),
//
//                                   ),
//                                 ],
//                               ),
//                               //     padding: EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
//                             ),
//                           );
//                         }
//                     ),
//
//
//                     SizedBox(height: 10,),
//
//                     StreamBuilder<int>(
//                         stream: master_off_controller.stream,
//                         initialData: 2,
//                         builder: (context, snapshot) {
//                           return Container(
//                             width: 234,
//                             height: 160,
//                             margin: const EdgeInsets.all(1.0),
//                             padding: const EdgeInsets.all(1.0),
//                             decoration: BoxDecoration(
//                                 color: Color.fromRGBO(34, 103, 115,0.5),
//                                 border: Border.all(color: master_off_border_color,width: 2),
//                                 borderRadius: BorderRadius.all(Radius.circular(15))
//                             ),
//                             child: RaisedButton(
//                               elevation:0,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   side: BorderSide(color: Colors.transparent)
//                               ),
//                               splashColor: Colors.blue.withOpacity(0.2),
//                               onPressed: (){
//                                 activePage=0;
//                                 master_off_control();
//
//                               },
//                               //  color:Color.fromRGBO(27, 89, 135,1).withOpacity(0.6),
//                               color:Color.fromRGBO(34, 103, 115,0.5),
//                               textColor: Colors.white,
//                               child:
//                               Column(
//                                 children: [
//                                   SizedBox(height: 20,),
//                                   IconButton(
//                                     icon: Icon(Icons.wb_incandescent),
//                                     color: Colors.green,
//                                     highlightColor: Colors.red,
//                                     disabledColor: Colors.black.withOpacity(0.7),
//                                     iconSize: 70,
//                                   ),
//                                   Text(
//                                     'OFF',
//                                     style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 20,fontFamily: 'FredokaOne'),
//                                   ),
//                                 ],
//                               ),
//                               //     padding: EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
//                             ),
//                           );
//                         }
//                     ),
//                     SizedBox(height: 10,),
//
//                     StreamBuilder<int>(
//                         stream: light_slider_controller.stream,
//                         initialData: 2,
//                         builder: (context, snapshot) {
//                           return Container(
//                             width: 236,
//                             height: 160,
//                             margin: const EdgeInsets.all(1.0),
//                             padding: const EdgeInsets.all(1.0),
//                             decoration: BoxDecoration(
//                               //color:  Color.fromRGBO(116, 140, 194,1).withOpacity(1),
//                               //  color: Color.fromRGBO(34, 103, 115,0.85),
//                                 color:Color.fromRGBO(27, 89, 135,1).withOpacity(0.6),
//                                 border: Border.all(color: slider_border_color,width: 2),
//                                 borderRadius: BorderRadius.all(Radius.circular(15))
//                             ),
//                             child:
//                             Column(
//                               children: [
//                                 SizedBox(height: 35,),
//                                 Icon(
//                                   Icons.wb_incandescent,
//                                   size: 50,
//                                   color: Colors.yellowAccent,
//                                 ),
//                                 Slider(
//                                   value: light_slider_value,
//                                   min: 0,
//                                   max: 100,
//                                   divisions: 100,
//                                   label: light_slider_value.toInt().toString(),
//                                   activeColor: Colors.blue,
//                                   inactiveColor: Colors.grey.withOpacity(0.5),
//                                   //  label: current_slider_value.round().toString(),
//                                   onChanged: (double value) {
//                                     setState(() {
//                                       light_slider_value=value;
//                                     });
//                                   },
//                                   onChangeEnd: (value)
//                                   {
//                                     setState(() {
//                                       //  current_slider_value=value;
//                                     });
//                                     activePage=0;
//                                     slider_control();
//                                     //goto_curtain(current_slider_value.toInt(),curtain_no);
//                                   },
//
//                                 ),
//                               ],
//                             ),
//
//
//                             // SleekCircularSlider(
//                             //     appearance: CircularSliderAppearance(),
//                             //     onChange: (double value) {
//                             //       print(value);
//                             //     }),
//                           );
//                         }
//                     ),
//
//                   ],
//                 )
//
//             );
//
//
//           }
//       );
//   }
// }
// //_SpinnerState spin =_SpinnerState();