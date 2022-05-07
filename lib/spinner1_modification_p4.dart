import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'http_client.dart';

class SpinnerP4 extends StatefulWidget {
  @override
  _SpinnerP4State createState() => _SpinnerP4State();
}

class _SpinnerP4State extends State<SpinnerP4> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 15,
        ),
        ValueListenableBuilder<bool>(
            valueListenable: l4.masterOnController,
            builder: (context, value, child) {
              return Container(
                width: 237,
                height: 160,
                margin: const EdgeInsets.all(1.0),
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(27, 89, 135, 1).withOpacity(0.6),
                    border: Border.all(color: l4.masterOnBorderColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: RaisedButton(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.transparent)),
                  splashColor: Colors.blue.withOpacity(0.2),
                  onPressed: () {
                    masterOnControl(3);
                  },
                  color: Color.fromRGBO(27, 89, 135, 1).withOpacity(0.6),
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_incandescent),
                        color: Colors.green,
                        highlightColor: Colors.red,
                        disabledColor: Colors.yellowAccent.withOpacity(0.8),
                        iconSize: 70,
                      ),
                      Text(
                        'ON',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 20,
                            fontFamily: 'FredokaOne'),
                      ),
                    ],
                  ),
                  //     padding: EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
                ),
              );
            }),
        SizedBox(
          height: 10,
        ),
        ValueListenableBuilder<bool>(
            valueListenable: l4.masterOffController,
            builder: (context, value, child) {
              return Container(
                width: 234,
                height: 160,
                margin: const EdgeInsets.all(1.0),
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(34, 103, 115, 0.5),
                    border:
                        Border.all(color: l4.masterOffBorderColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: RaisedButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.transparent)),
                  splashColor: Colors.blue.withOpacity(0.2),
                  onPressed: () {
                    masterOffControl(3);
                  },
                  //  color:Color.fromRGBO(27, 89, 135,1).withOpacity(0.6),
                  color: Color.fromRGBO(34, 103, 115, 0.5),
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_incandescent),
                        color: Colors.green,
                        highlightColor: Colors.red,
                        disabledColor: Colors.black.withOpacity(0.7),
                        iconSize: 70,
                      ),
                      Text(
                        'OFF',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 20,
                            fontFamily: 'FredokaOne'),
                      ),
                    ],
                  ),
                  //     padding: EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
                ),
              );
            }),
        SizedBox(
          height: 10,
        ),
        ValueListenableBuilder<bool>(
            valueListenable: l4.lightSliderController,
            builder: (context, value, child) {
              return Container(
                width: 236,
                height: 160,
                margin: const EdgeInsets.all(1.0),
                padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    //color:  Color.fromRGBO(116, 140, 194,1).withOpacity(1),
                    //  color: Color.fromRGBO(34, 103, 115,0.85),
                    color: Color.fromRGBO(27, 89, 135, 1).withOpacity(0.6),
                    border: Border.all(color: l4.sliderBorderColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Icon(
                      Icons.wb_incandescent,
                      size: 50,
                      color: Colors.yellowAccent,
                    ),
                    Slider(
                      value: l4.lightSliderVal,
                      min: 0,
                      max: 100,
                      divisions: 100,
                      label: l4.lightSliderVal.toInt().toString(),
                      activeColor: Colors.blue,
                      inactiveColor: Colors.grey.withOpacity(0.5),
                      //  label: current_slider_value.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          l4.lightSliderVal = value;
                        });
                      },
                      onChangeEnd: (value) {
                        setState(() {
                          //  current_slider_value=value;
                        });
                        sliderControl(3);
                      },
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
