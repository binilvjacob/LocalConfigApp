import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:intl/intl.dart';

class TimeWidget extends StatefulWidget {
  @override
  _TimeWidgetState createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  String _timeString = "00:00";
  String _secondString = "00";

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    if (!mounted) return;
    super.initState();
    Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    if (!mounted) return;
    final String formattedDateTime =
        DateFormat('kk:mm').format(DateTime.now()).toString();
    final String secondsTime =
        DateFormat('ss').format(DateTime.now()).toString();
    setState(() {
      _timeString = formattedDateTime;
      _secondString = secondsTime;
      timeData = _timeString.toString();
      secondsData = _secondString.toString();
    });
    darkScreenUpdater.value = !darkScreenUpdater.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, left: 15, right: 20, top: 45),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        // borderRadius: BorderRadius.all(Radius.circular(40)),
        //color: Color.fromRGBO(70, 82, 84,1),
        //color: Color.fromRGBO(68, 148, 201,1),
      ),
      width: MediaQuery.of(context).size.width * 0.23,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          Text(
            _timeString.toString(),
            //textDirection: TextDirection.,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.08,
                color: Colors.white.withOpacity(0.8),
                fontFamily: 'FredokaOne'),
          ),
          Text(
            _secondString.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.035,
                color: Color.fromRGBO(11, 191, 155, 0.6),
                fontFamily: 'FredokaOne'),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
      // child: Text(
      //   _timeString.toString(),
      //   textAlign: TextAlign.center,
      //   style: TextStyle(
      //   fontSize: 70,
      //   fontWeight: FontWeight.bold,
      //   color: Colors.black,
      //   ),
      // ),

      alignment: Alignment.center,
      //color: Color.fromRGBO(83, 75, 84,1),
    );
  }
}
