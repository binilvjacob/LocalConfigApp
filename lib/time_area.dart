import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'time.dart';

Timer timer4;
var duration4 = Duration(seconds: 2);
var currentSliderValue = 1.0;
Color emergencyIconColor = Color(0x15C8EF);

class Fan extends StatefulWidget {
  @override
  _FanState createState() => _FanState();
}

class _FanState extends State<Fan> {
  Color iconColor = Colors.white;
  double opac = 1;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    //  faniconColor=Colors.blueAccent;
    emergencyIconColor = Colors.grey;
    timer4 = Timer.periodic(duration4, (timer) {
      sensor_update();
    });
  }

  @override
  void sensor_update() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  DateWidget(),
        // SizedBox(height: 120,),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        TimeWidget(),
        //SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        // SizedBox(height: 60,),
      ],
    );
  }
}
