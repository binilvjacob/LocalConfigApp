// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import './configip.dart';
// import 'main.dart';
//
// class DateWidget extends StatefulWidget {
//   @override
//   _DateWidgetState createState() => _DateWidgetState();
// }
//
// class _DateWidgetState extends State<DateWidget> {
//   //String _dateString;
//   int count;
//   String _dayString;
//   int _monthString;
//   String _weekString;
//   String _shortMonth;
//
//   @override
//   void initState() {
//     if (!mounted) return;
//     super.initState();
//     _dayString = '00';
//     _monthString = 1;
//     _weekString = '';
//     _shortMonth = '';
//     count = 0;
//     Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
//   }
//
//   @override
//   void _getTime() {
//     if (!mounted) return;
//     final String day = DateFormat('dd').format(DateTime.now()).toString();
//     final int month = int.parse(DateFormat('MM').format(DateTime.now()));
//     //final String year= DateFormat('yyyy').format(DateTime.now()).toString();
//     final String week = DateFormat('EEE').format(DateTime.now()).toString();
//     //final String formattedDateTime = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();
//     setState(() {
//       //_dateString = formattedDateTime;
//       _dayString = day;
//       _monthString = month;
//       //_yearString = year;
//       _weekString = week;
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var month = [
//       'Jan',
//       'Feb',
//       'Mar',
//       'Apr',
//       'May',
//       'Jun',
//       'Jul',
//       'Aug',
//       'Sep',
//       'Oct',
//       'Nov',
//       'Dec'
//     ];
//     _shortMonth = month[_monthString - 1];
//     return Container(
//       margin: EdgeInsets.only(bottom: 0, left: 0, right: 0, top: 0),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.transparent),
//         borderRadius: BorderRadius.all(Radius.circular(40)),
//         // color: Colors.white,
//         //   color: Color.fromRGBO(68, 148, 201,1),
//       ),
//       width: 150,
//       height: 42,
//       child: GestureDetector(
//         onTap: () {
//           count++;
//           // print(count);
//           if (count >= 7 && currentPage == 0) {
//             // final snackBar = SnackBar(content: Text("Tap"));
//             // Scaffold.of(context).showSnackBar(snackBar);
//             count = 0;
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Config()),
//             );
//           }
//         },
//         child: Row(
//           children: [
//             Row(
//               children: [
//                 SizedBox(
//                   width: 10,
//                 ),
//                 // Text(
//                 //   _weekString,
//                 //   textAlign: TextAlign.end,
//                 //   style: TextStyle(
//                 //       fontSize: 25,
//                 //       color: Colors.white,
//                 //       fontFamily: 'FredokaOne'
//                 //   ),
//                 // ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   _dayString.toString(),
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.grey.withOpacity(0.7),
//                       fontFamily: 'FredokaOne'),
//                 ),
//                 SizedBox(width: 15),
//                 Text(
//                   '$_shortMonth',
//                   textAlign: TextAlign.end,
//                   style: TextStyle(
//                       fontSize: 25,
//                       color: Colors.grey.withOpacity(0.7),
//                       fontFamily: 'FredokaOne'),
//                 ),
//               ],
//             ),
//           ],
//           mainAxisAlignment: MainAxisAlignment.values[2],
//           crossAxisAlignment: CrossAxisAlignment.values[2],
//         ),
//       ),
//       alignment: Alignment.center,
//     );
//   }
// }
