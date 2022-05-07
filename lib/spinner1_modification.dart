import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'http_client.dart';

class Spinner extends StatefulWidget {
  @override
  _SpinnerState createState() => _SpinnerState();
}

class _SpinnerState extends State<Spinner> {
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
        //  SizedBox(height: 15,),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        ValueListenableBuilder<bool>(
            valueListenable: l1.masterOnController,
            builder: (context, value, child) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.185,
                height: MediaQuery.of(context).size.height * 0.2,
                //margin: const EdgeInsets.all(1.0),
                // padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(27, 89, 135, 1).withOpacity(0.6),
                    border: Border.all(color: l1.masterOnBorderColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.height * 0.02))),
                child: RaisedButton(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.02),
                      side: BorderSide(color: Colors.transparent)),
                  splashColor: Colors.blue.withOpacity(0.2),
                  onPressed: () {
                    masterOnControl(0);
                  },
                  color: Color.fromRGBO(27, 89, 135, 1).withOpacity(0.6),
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_incandescent),
                        color: Colors.green,
                        highlightColor: Colors.red,
                        disabledColor: Colors.yellowAccent.withOpacity(0.8),
                        iconSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        'ON',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                            fontFamily: 'FredokaOne'),
                      ),
                    ],
                  ),
                  //     padding: EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
                ),
              );
            }),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        ValueListenableBuilder<bool>(
            valueListenable: l1.masterOffController,
            builder: (context, value, child) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.185,
                height: MediaQuery.of(context).size.height * 0.2,
                // margin: const EdgeInsets.all(1.0),
                // padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(34, 103, 115, 0.5),
                    border:
                        Border.all(color: l1.masterOffBorderColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.height * 0.02))),
                child: RaisedButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.02),
                      side: BorderSide(color: Colors.transparent)),
                  splashColor: Colors.blue.withOpacity(0.2),
                  onPressed: () {
                    masterOffControl(0);
                  },
                  //  color:Color.fromRGBO(27, 89, 135,1).withOpacity(0.6),
                  color: Color.fromRGBO(34, 103, 115, 0.5),
                  textColor: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      IconButton(
                        icon: Icon(Icons.wb_incandescent),
                        color: Colors.green,
                        highlightColor: Colors.red,
                        disabledColor: Colors.black.withOpacity(0.7),
                        iconSize: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        'OFF',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: MediaQuery.of(context).size.width * 0.02,
                            fontFamily: 'FredokaOne'),
                      ),
                    ],
                  ),
                  //     padding: EdgeInsets.only(top: 0,bottom: 0,left: 0,right: 0),
                ),
              );
            }),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        ValueListenableBuilder<bool>(
            valueListenable: l1.lightSliderController,
            builder: (context, value, child) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.185,
                height: MediaQuery.of(context).size.height * 0.2,
                // margin: const EdgeInsets.all(1.0),
                // padding: const EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                    //color:  Color.fromRGBO(116, 140, 194,1).withOpacity(1),
                    //  color: Color.fromRGBO(34, 103, 115,0.85),
                    color: Color.fromRGBO(27, 89, 135, 1).withOpacity(0.6),
                    border: Border.all(color: l1.sliderBorderColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(
                        MediaQuery.of(context).size.height * 0.02))),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Icon(
                      Icons.wb_incandescent,
                      size: MediaQuery.of(context).size.height * 0.08,
                      color: Colors.yellowAccent,
                    ),
                    Expanded(
                      child: Slider(
                        value: l1.lightSliderVal,
                        min: 0,
                        max: 100,
                        divisions: 100,
                        label: l1.lightSliderVal.toInt().toString(),
                        activeColor: Colors.blue,
                        inactiveColor: Colors.grey.withOpacity(0.5),
                        //  label: current_slider_value.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            l1.lightSliderVal = value;
                          });
                        },
                        onChangeEnd: (value) {
                          setState(() {
                            //  current_slider_value=value;
                          });
                          sliderControl(0);
                        },
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
