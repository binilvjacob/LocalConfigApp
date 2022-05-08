// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'http_client.dart';
// import 'main.dart';
// import 'dart:async';
//
// Timer timer4;
// var duration4 = Duration(seconds: 2);
// var currentSliderValue = 1.0;
// int curtainNo = 1;
// var curtainText = "1";
//
// Color rightBgColor = Colors.blueGrey;
//
// class Curtain1 extends StatefulWidget {
//   @override
//   _Curtain1State createState() => _Curtain1State();
// }
//
// class _Curtain1State extends State<Curtain1> {
//   Color iconColor = Colors.white;
//   double opac = 1;
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // double opac = 1;
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         SizedBox(
//           height: 15,
//         ),
//         SizedBox(
//           height: 175,
//         ),
//         Container(
//           width: 236,
//           height: 160,
//           margin: const EdgeInsets.all(1.0),
//           padding: const EdgeInsets.all(1.0),
//           decoration: BoxDecoration(
//               color: Color.fromRGBO(116, 140, 194, 1).withOpacity(0.8),
//               border: Border.all(color: Colors.transparent),
//               borderRadius: BorderRadius.all(Radius.circular(15))),
//           child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 // RotateImage(),
//                 Container(
//                   height: 70.0,
//                   width: 70.0,
//                   child: Image(
//                     image: AssetImage('assets\\fan.png'),
//                     color: Colors.black54,
//                     width: 65,
//                     height: 65,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 ValueListenableBuilder(
//                     valueListenable: f2.fanController,
//                     builder: (context, value, child) {
//                       return ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.only(left: 0, top: 0),
//                             fixedSize: Size(60, 60),
//                             minimumSize: Size(20, 30),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(13.0),
//                             ),
//                             primary: f2.fanSpeedButtonColor[5],
//                             elevation: 6),
//                         onPressed: () {
//                           // setState(() {
//                           //   animationController.duration = Duration(seconds: 1);
//                           //   animationController.repeat();
//                           // });
//                           fanControl(100, 1);
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 0),
//                           child: Text(
//                             'ON',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontFamily: 'FredokaOne'),
//                           ),
//                         ),
//                       );
//                     }),
//
//                 SizedBox(
//                   width: 10,
//                 ),
//                 ValueListenableBuilder(
//                     valueListenable: f2.fanController,
//                     builder: (context, value, child) {
//                       return ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             padding: EdgeInsets.only(left: 0, top: 0),
//                             fixedSize: Size(60, 60),
//                             minimumSize: Size(20, 30),
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(13.0)),
//                             primary: f2.fanSpeedButtonColor[0],
//                             elevation: 6),
//                         onPressed: () {
//                           // setState(() {
//                           //   animationController.duration = Duration(seconds: 1000);
//                           //   animationController.repeat();
//                           // });
//                           fanControl(0, 1);
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.only(left: 0),
//                           child: Text(
//                             'OFF',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontFamily: 'FredokaOne'),
//                           ),
//                         ),
//                       );
//                     }),
//               ]),
//         ),
//       ],
//     );
//   }
// }
// //////////////////////////////////////////////////////////////
//
// Duration fanIconSpeed = Duration(seconds: 1);
// AnimationController animationController;
//
// class RotateImage extends StatefulWidget {
//   @override
//   RotateImageState createState() => new RotateImageState();
// }
//
// class RotateImageState extends State with SingleTickerProviderStateMixin {
//   @override
//   void initState() {
//     super.initState();
//     animationController = new AnimationController(
//       vsync: this,
//       duration: f2.fanIconAnimationDuration,
//     );
//
//     animationController.repeat();
//   }
//
//   stopRotation() {
//     animationController.stop();
//   }
//
//   startRotation() {
//     animationController.repeat();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ValueListenableBuilder<bool>(
//         valueListenable: f2.fanController,
//         builder: (context, value, child) {
//           return Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Container(
//                     color: Colors.transparent,
//                     alignment: Alignment.center,
//                     child: Container(
//                       height: 70.0,
//                       width: 70.0,
//                       child: Image(
//                         image: AssetImage('assets\\fan.png'),
//                         color: Colors.black54,
//                         width: 65,
//                         height: 65,
//                       ),
//                     )),
//
//                 SizedBox(
//                   width: 10,
//                 ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.only(left: 0, top: 0),
//                       fixedSize: Size(60, 60),
//                       minimumSize: Size(20, 30),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(13.0),
//                       ),
//                       primary: f2.fanSpeedButtonColor[5],
//                       elevation: 6),
//                   onPressed: () {
//                     // setState(() {
//                     //   animationController.duration = Duration(seconds: 1);
//                     //   animationController.repeat();
//                     // });
//                     fanControl(100, 1);
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 0),
//                     child: Text(
//                       'ON',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontFamily: 'FredokaOne'),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                       padding: EdgeInsets.only(left: 0, top: 0),
//                       fixedSize: Size(60, 60),
//                       minimumSize: Size(20, 30),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(13.0)),
//                       primary: f2.fanSpeedButtonColor[0],
//                       elevation: 6),
//                   onPressed: () {
//                     // setState(() {
//                     //   animationController.duration = Duration(seconds: 1000);
//                     //   animationController.repeat();
//                     // });
//                     fanControl(0, 1);
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 0),
//                     child: Text(
//                       'OFF',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontFamily: 'FredokaOne'),
//                     ),
//                   ),
//                 ),
//
//                 // Container(
//                 //     margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                 //     child:
//                 //     RaisedButton(
//                 //       onPressed: () => startRotation(),
//                 //       child: Text(' Start Rotation '),
//                 //       textColor: Colors.white,
//                 //       color: Colors.green,
//                 //       padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
//                 //     )
//                 // ),
//
//                 // Container(
//                 //     margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                 //     child:
//                 //     RaisedButton(
//                 //       onPressed: () => stopRotation(),
//                 //       child: Text(' Stop Rotation '),
//                 //       textColor: Colors.white,
//                 //       color: Colors.green,
//                 //       padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
//                 //     )
//                 // ),
//               ]);
//         });
//   }
// }
