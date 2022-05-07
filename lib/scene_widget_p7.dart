import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'http_client.dart';

List<bool> _isChecked = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false
];

// Find the ScaffoldMessenger in the widget tree
// and use it to show a SnackBar.

/// Change PAGE
class Scene_p7 extends StatefulWidget {
  final int sceneNo;

  Scene_p7(this.sceneNo);
  @override
  _Scene_p7State createState() => _Scene_p7State();
}

/// Change PAGE
class _Scene_p7State extends State<Scene_p7> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  print("building scene");
    return ValueListenableBuilder<bool>(

        /// Change PAGE
        valueListenable: s7.sceneController,
        builder: (context, value, child) {
          // if(respCmd==234)
          // {
          //   print("z1 is : $z1");
          //   print("resplid is : $respLid");
          //   if(respData==widget.scene_no && respLid==z1)
          //   {
          //     scene_border_color[widget.scene_no]=Colors.white.withOpacity(0.9);
          //     widget.scene_border_width[widget.scene_no]=5;
          //   }
          //   else if(respLid==z1){
          //     scene_border_color[widget.scene_no]=Colors.transparent;
          //     widget.scene_border_width[widget.scene_no]=0;
          //   }
          // }
          // else if((respCmd==208||respCmd==212||respCmd==201) && respLid==z1)
          //   {
          //     scene_border_color[widget.scene_no]=Colors.transparent;
          //     widget.scene_border_width[widget.scene_no]=0;
          //   }
          //  print("hasdata");

          return GestureDetector(
            child: Opacity(
              opacity: 0.8,
              child: ArgonTimerButton(
                // Optional
                height: 10,
                width: MediaQuery.of(context).size.width * 0.45,
                minWidth: MediaQuery.of(context).size.width * 0.30,
                //color: Color(0xFF7866FE),
                /// Change PAGE
                color: s7.sceneBorderColor[widget.sceneNo],
                //color:Colors.transparent,
                borderRadius: 15.0,

                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    /// Change PAGE
                    image: AssetImage(s7.sceneImages[widget.sceneNo]),
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                ),
                loader: (timeLeft) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Container(
                      // child: SpinKitWave(
                      //   color: Colors.white,
                      // ),
                      child: Icon(
                        Icons.wb_incandescent,
                        color: Colors.yellow,
                      ),
                      color: Colors.blueGrey,
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    // child:Image(
                    //   image:AssetImage(widget.scene_images[widget.scene_no]),
                    //   height: MediaQuery.of(context).size.height * 0.15,
                    //   width: MediaQuery.of(context).size.width * 0.2,
                    //
                    // ),
                  );
                },
                onTap: (startTimer, btnState) {
                  /// Change PAGE
                  scenedata(widget.sceneNo, 6);
                  if (btnState == ButtonState.Idle) {
                    startTimer(1);
                  }
                },
              ),
            ),
          );
        });
  }
}

//
// class AlertDialog extends StatefulWidget {
//
//
//   @override
//   _AlertDialogState createState() => _AlertDialogState();
// }
//
// class _AlertDialogState extends State<AlertDialog> {
//
// //  Scene(@required this.bg_color);
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     Widget okButton = TextButton(
//       child: Text("OK"),
//       onPressed: () { },
//     );
//
//     // set up the AlertDialog
//     AlertDialog alert = AlertDialog(
//       title: Text("My title"),
//       content: Text("This is my message."),
//       actions: [
//         okButton,
//       ],
//     );
//
//     // show the dialog
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return alert;
//       },
//     );
//   }
// }

class GetCheckValue extends StatefulWidget {
  @override
  GetCheckValueState createState() {
    return new GetCheckValueState();
  }
}

class GetCheckValueState extends State<GetCheckValue> {
  bool _isChecked1;
  bool _isChecked2;

  @override
  void initState() {
    if (_isChecked1 == null) {
      _isChecked1 = false;
    }
    if (_isChecked2 == null) {
      _isChecked2 = false;
    }
  }

  String _currText = '';

  List<String> text = ["InduceSmile.com", "Flutter.io", "google.com"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Center(
          //   child: Text(_currText,
          //       style: TextStyle(
          //         fontSize: 20.0,
          //         fontWeight: FontWeight.bold,
          //       )),
          // ),

          Container(
              //   alignment: Alignment.bottomLeft,
              height: 500,
              child: Column(
                children: [
                  CheckboxListTile(
                    //contentPadding:EdgeInsets.all(0),
                    title: Text('Zone Address'),
                    value: _isChecked[0],
                    onChanged: (val) {
                      setState(() {
                        _isChecked[0] = val;
                        if (_isChecked[0] == true) {
                          for (int i = 0; i < 17; i++) {
                            if (i != 0) {
                              _isChecked[i] = false;
                            }
                          }
                        }
                        // if (val == true) {
                        //   _currText = t;
                        // }
                      });
                    },
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 1'),
                      value: _isChecked[1],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[1] = val;
                          if (_isChecked[1] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 1) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 2'),
                      value: _isChecked[2],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[2] = val;
                          if (_isChecked[2] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 2) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 3'),
                      value: _isChecked[3],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[3] = val;
                          if (_isChecked[3] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 3) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 4'),
                      value: _isChecked[4],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[4] = val;
                          if (_isChecked[4] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 4) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 5'),
                      value: _isChecked[5],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[5] = val;
                          if (_isChecked[5] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 5) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 6'),
                      value: _isChecked[6],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[6] = val;
                          if (_isChecked[6] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 6) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 7'),
                      value: _isChecked[7],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[7] = val;
                          if (_isChecked[7] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 7) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 8'),
                      value: _isChecked[8],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[8] = val;
                          if (_isChecked[8] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 8) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 9'),
                      value: _isChecked[9],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[9] = val;
                          if (_isChecked[9] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 9) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 10'),
                      value: _isChecked[10],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[10] = val;
                          if (_isChecked[10] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 10) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 11'),
                      value: _isChecked[11],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[11] = val;
                          if (_isChecked[11] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 11) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 12'),
                      value: _isChecked[12],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[12] = val;
                          if (_isChecked[12] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 12) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 13'),
                      value: _isChecked[13],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[13] = val;
                          if (_isChecked[13] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 13) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 14'),
                      value: _isChecked[14],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[14] = val;
                          if (_isChecked[14] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 14) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 15'),
                      value: _isChecked[15],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[15] = val;
                          if (_isChecked[15] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 15) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      title: Text('Group 16'),
                      value: _isChecked[16],
                      onChanged: (val) {
                        setState(() {
                          _isChecked[16] = val;
                          if (_isChecked[16] == true) {
                            for (int i = 0; i < 17; i++) {
                              if (i != 16) {
                                _isChecked[i] = false;
                              }
                            }
                          }
                          // if (val == true) {
                          //   _currText = t;
                          // }
                        });
                      },
                    ),
                  ),
                ],
              )),

          // Expanded(
          //     child: Container(
          //    //   alignment: Alignment.bottomLeft,
          //       height: 50.0,
          //       child: Column(
          //         children: text
          //             .map((t) => CheckboxListTile(
          //           title: Text(t),
          //           value: _isChecked,
          //           onChanged: (val) {
          //             setState(() {
          //               _isChecked = val;
          //               if (val == true) {
          //                 _currText = t;
          //               }
          //             });
          //           },
          //         ))
          //             .toList(),
          //       ),
          //     )
          // ),
        ],
      ),
    );
  }
}
