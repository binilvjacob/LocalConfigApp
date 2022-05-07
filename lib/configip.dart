import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';
// var  zoneid;
// String slaveip;
// String slaveip2;
// String slaveip3;
// String slaveip4;
// String masterip;
// var fan_add;
// var curtain1_add;
// var curtain2_add;
// var curtain3_add;
// var curtain4_add;
// var gate_add;
// var port1;
// var port2;
// var port3;
// var port4;
// var gatewayid1;
// var gatewayid2;
// var gatewayid3;
// var gatewayid4;
// var keepalive1;
// var keepalive2;
// var keepalive3;
// var keepalive4;

TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController zoneController = TextEditingController();
TextEditingController masteripController = TextEditingController();
TextEditingController slaveipController = TextEditingController();
TextEditingController slaveip2Controller = TextEditingController();
TextEditingController slaveip3Controller = TextEditingController();
TextEditingController slaveip4Controller = TextEditingController();
TextEditingController slaveip5Controller = TextEditingController();
TextEditingController slaveip6Controller = TextEditingController();
TextEditingController slaveip7Controller = TextEditingController();
TextEditingController slaveip8Controller = TextEditingController();
TextEditingController fanController = TextEditingController();
TextEditingController curtain1Controller = TextEditingController();
TextEditingController curtain2Controller = TextEditingController();
TextEditingController curtain3Controller = TextEditingController();
TextEditingController curtain4Controller = TextEditingController();
TextEditingController curtain5Controller = TextEditingController();
TextEditingController curtain6Controller = TextEditingController();
TextEditingController curtain7Controller = TextEditingController();
TextEditingController curtain8Controller = TextEditingController();
TextEditingController gateController = TextEditingController();
TextEditingController port1Controller = TextEditingController();
TextEditingController port2Controller = TextEditingController();
TextEditingController port3Controller = TextEditingController();
TextEditingController port4Controller = TextEditingController();
TextEditingController port5Controller = TextEditingController();
TextEditingController port6Controller = TextEditingController();
TextEditingController port7Controller = TextEditingController();
TextEditingController port8Controller = TextEditingController();
TextEditingController gatewayid1Controller = TextEditingController();
TextEditingController gatewayid2Controller = TextEditingController();
TextEditingController gatewayid3Controller = TextEditingController();
TextEditingController gatewayid4Controller = TextEditingController();
TextEditingController gatewayid5Controller = TextEditingController();
TextEditingController gatewayid6Controller = TextEditingController();
TextEditingController gatewayid7Controller = TextEditingController();
TextEditingController gatewayid8Controller = TextEditingController();
TextEditingController keepalive1Controller = TextEditingController();
TextEditingController keepalive2Controller = TextEditingController();
TextEditingController keepalive3Controller = TextEditingController();
TextEditingController keepalive4Controller = TextEditingController();
TextEditingController keepalive5Controller = TextEditingController();
TextEditingController keepalive6Controller = TextEditingController();
TextEditingController keepalive7Controller = TextEditingController();
TextEditingController keepalive8Controller = TextEditingController();

class Credentials {
  var zoneid;
  var slaveip;
  var slaveip2;
  var slaveip3;
  var slaveip4;
  var slaveip5;
  var slaveip6;
  var slaveip7;
  var slaveip8;
  var fanAdd;
  var port1;
  var port2;
  var port3;
  var port4;
  var port5;
  var port6;
  var port7;
  var port8;
  var gatewayid1;
  var gatewayid2;
  var gatewayid3;
  var gatewayid4;
  var gatewayid5;
  var gatewayid6;
  var gatewayid7;
  var gatewayid8;

  Credentials(
      this.zoneid,
      this.slaveip,
      this.slaveip2,
      this.slaveip3,
      this.slaveip4,
      this.slaveip5,
      this.slaveip6,
      this.slaveip7,
      this.slaveip8,
      this.fanAdd,
      this.port1,
      this.port2,
      this.port3,
      this.port4,
      this.port5,
      this.port6,
      this.port7,
      this.port8,
      this.gatewayid1,
      this.gatewayid2,
      this.gatewayid3,
      this.gatewayid4,
      this.gatewayid5,
      this.gatewayid6,
      this.gatewayid7,
      this.gatewayid8);
}

Future<Credentials> credentials() async {
  //print("a");
  final prefs = await SharedPreferences.getInstance();
  //print("b");
  // cred.zoneid = prefs.getInt('zoneid');
  cred.slaveip = prefs.getString('slaveip');
  cred.slaveip2 = prefs.getString('slaveip2');
  cred.slaveip3 = prefs.getString('slaveip3');
  cred.slaveip4 = prefs.getString('slaveip4');
  cred.slaveip5 = prefs.getString('slaveip5');
  cred.slaveip6 = prefs.getString('slaveip6');
  cred.slaveip7 = prefs.getString('slaveip7');
  cred.slaveip8 = prefs.getString('slaveip8');
  cred.fanAdd = prefs.getString('fan_add');
  cred.port1 = prefs.getString('port1');
  cred.port2 = prefs.getString('port2');
  cred.port3 = prefs.getString('port3');
  cred.port4 = prefs.getString('port4');
  cred.port5 = prefs.getString('port5');
  cred.port6 = prefs.getString('port6');
  cred.port7 = prefs.getString('port7');
  cred.port8 = prefs.getString('port8');
  cred.gatewayid1 = prefs.getString('gatewayid1');
  cred.gatewayid2 = prefs.getString('gatewayid2');
  cred.gatewayid3 = prefs.getString('gatewayid3');
  cred.gatewayid4 = prefs.getString('gatewayid4');
  cred.gatewayid5 = prefs.getString('gatewayid5');
  cred.gatewayid6 = prefs.getString('gatewayid6');
  cred.gatewayid7 = prefs.getString('gatewayid7');
  cred.gatewayid8 = prefs.getString('gatewayid8');
  // print("c");
  //cred.slaveip = "0";

  // cred.slaveip2 = "0";
  // cred.slaveip3 = "0";
  // cred.slaveip4 = "0";
  // cred.fan_add = "0";
  // //cred.port1 = "0";
  // cred.port2 = "0";
  // cred.port3 = "0";
  // cred.port4 = "0";
  // cred.gatewayid1 = "0";
  // cred.gatewayid2 = "0";
  // cred.gatewayid3 = "0";
  // cred.gatewayid4 = "0";
  try {
    if (cred.port1 != null) {
      z1 = int.parse(cred.port1);
    }
    if (cred.port2 != null) {
      z2 = int.parse(cred.port2);
    }
    if (cred.port3 != null) {
      z3 = int.parse(cred.port3);
    }
    if (cred.port4 != null) {
      z4 = int.parse(cred.port4);
    }
    if (cred.port5 != null) {
      z5 = int.parse(cred.port5);
    }
    if (cred.port6 != null) {
      z6 = int.parse(cred.port6);
    }
    if (cred.port7 != null) {
      z7 = int.parse(cred.port7);
    }
    if (cred.port8 != null) {
      z8 = int.parse(cred.port8);
    }
  } catch (e) {}

  return cred;
}

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  void initState() {
    super.initState();
    //credentials();
    // zoneController.text='$zoneid';
    fanController.text = '${cred.fanAdd}';
    slaveipController.text = '${cred.slaveip}';
    port1Controller.text = '${cred.port1}';
    gatewayid1Controller.text = '${cred.gatewayid1}';

    slaveip2Controller.text = '${cred.slaveip2}';
    port2Controller.text = '${cred.port2}';
    gatewayid2Controller.text = '${cred.gatewayid2}';

    slaveip3Controller.text = '${cred.slaveip3}';
    port3Controller.text = '${cred.port3}';
    gatewayid3Controller.text = '${cred.gatewayid3}';

    slaveip4Controller.text = '${cred.slaveip4}';
    port4Controller.text = '${cred.port4}';
    gatewayid4Controller.text = '${cred.gatewayid4}';

    slaveip5Controller.text = '${cred.slaveip5}';
    port5Controller.text = '${cred.port5}';
    gatewayid5Controller.text = '${cred.gatewayid5}';

    slaveip6Controller.text = '${cred.slaveip6}';
    port6Controller.text = '${cred.port6}';
    gatewayid6Controller.text = '${cred.gatewayid6}';

    slaveip7Controller.text = '${cred.slaveip7}';
    port7Controller.text = '${cred.port7}';
    gatewayid7Controller.text = '${cred.gatewayid7}';

    slaveip8Controller.text = '${cred.slaveip8}';
    port8Controller.text = '${cred.port8}';
    gatewayid8Controller.text = '${cred.gatewayid8}';
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LIGERO'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.admin_panel_settings,
                      color: Colors.red,
                      size: 35,
                      semanticLabel: 'config',
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Configuration',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      icon: new Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                // Container(
                //   padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                //   child: TextField(
                //     obscureText: false,
                //     controller: zoneController,
                //     decoration: InputDecoration(
                //       icon: new Icon(
                //         Icons.lock,
                //         color: Colors.black,
                //       ),
                //       border: OutlineInputBorder(),
                //       labelText: 'Zone ID',
                //     ),
                //   ),
                // ),
                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: cred,
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // fanController.text=snapshot.data.fan_add;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            obscureText: false,
                            controller: fanController,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Fan address',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // slaveipController.text=snapshot.data.slaveip;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: slaveipController,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave IP 1',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // port1Controller.text=snapshot.data.port1.toString();
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: port1Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ZONE 1',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // gatewayid1Controller.text=snapshot.data.gatewayid1;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: gatewayid1Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave 1 ID',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // slaveip2Controller.text=snapshot.data.slaveip2;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: slaveip2Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave IP 2',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // port2Controller.text=snapshot.data.port2.toString();
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: port2Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ZONE 2',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // gatewayid2Controller.text=snapshot.data.gatewayid2;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: gatewayid2Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave 2 ID',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // slaveip3Controller.text=snapshot.data.slaveip3;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: slaveip3Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave IP 3',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // port3Controller.text=snapshot.data.port3.toString();
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: port3Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ZONE 3',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // gatewayid3Controller.text=snapshot.data.gatewayid3;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: gatewayid3Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave 3 ID',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        //slaveip4Controller.text=snapshot.data.slaveip4;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: slaveip4Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave IP 4',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // port4Controller.text=snapshot.data.port4.toString();
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: port4Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ZONE 4',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // gatewayid4Controller.text=snapshot.data.gatewayid4;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: gatewayid4Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave 4 ID',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // slaveipController.text=snapshot.data.slaveip;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: slaveip5Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave IP 5',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // port1Controller.text=snapshot.data.port1.toString();
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: port5Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ZONE 5',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // gatewayid1Controller.text=snapshot.data.gatewayid1;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: gatewayid5Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave 5 ID',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // slaveipController.text=snapshot.data.slaveip;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: slaveip6Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave IP 6',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // port1Controller.text=snapshot.data.port1.toString();
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: port6Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ZONE 6',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // gatewayid1Controller.text=snapshot.data.gatewayid1;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: gatewayid6Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave 6 ID',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // slaveipController.text=snapshot.data.slaveip;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: slaveip7Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave IP 7',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // port1Controller.text=snapshot.data.port1.toString();
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: port7Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ZONE 7',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // gatewayid1Controller.text=snapshot.data.gatewayid1;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: gatewayid7Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave 7 ID',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // slaveipController.text=snapshot.data.slaveip;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: slaveip8Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave IP 8',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // port1Controller.text=snapshot.data.port1.toString();
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: port8Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'ZONE 8',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                FutureBuilder<Credentials>(
                    future: credentials(),
                    initialData: Credentials(
                        0,
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0",
                        "0"),
                    builder: (BuildContext context,
                        AsyncSnapshot<Credentials> snapshot) {
                      if (snapshot.hasData) {
                        // gatewayid1Controller.text=snapshot.data.gatewayid1;
                        return Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            //obscureText: true,
                            controller: gatewayid8Controller,
                            decoration: InputDecoration(
                              icon: new Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              border: OutlineInputBorder(),
                              labelText: 'Slave 8 ID',
                            ),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircularProgressIndicator();
                      } else {
                        return CircularProgressIndicator();
                      }
                    }),

                Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: 20,
                    padding: EdgeInsets.only(
                        left: 550, top: 30, bottom: 30, right: 550),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text('Submit'),
                      onPressed: () async {
                        if (nameController.text == 'ligero' &&
                            passwordController.text == 'admin123') {
                          //print("Success");
                          // zoneid=int.parse(zoneController.text);
                          // masterip=masteripController.text;
                          // slaveip=slaveipController.text;
                          // slaveip2=slaveip2Controller.text;
                          // slaveip3=slaveip3Controller.text;
                          // slaveip4=slaveip4Controller.text;
                          // fan_add=fanController.text;
                          // curtain1_add=curtain1Controller.text;
                          // curtain2_add=curtain2Controller.text;
                          // curtain3_add=curtain3Controller.text;
                          // curtain4_add=curtain4Controller.text;
                          // gate_add=gateController.text;
                          // port1=int.parse(port1Controller.text);
                          // port2=int.parse(port2Controller.text);
                          // port3=int.parse(port3Controller.text);
                          // port4=int.parse(port4Controller.text);
                          // gatewayid1=gatewayid1Controller.text;
                          // gatewayid2=gatewayid2Controller.text;
                          // gatewayid3=gatewayid3Controller.text;
                          // gatewayid4=gatewayid4Controller.text;
                          // keepalive1=keepalive1Controller.text;
                          // keepalive2=keepalive2Controller.text;
                          // keepalive3=keepalive3Controller.text;
                          // keepalive4=keepalive4Controller.text;

                          final prefs = await SharedPreferences
                              .getInstance(); // set value
                          //prefs.remove('zoneid');
                          //prefs.setInt('zoneid', int.parse(zoneController.text.toString()));
                          prefs.setString('port1', port1Controller.text);
                          prefs.setString('port2', port2Controller.text);
                          prefs.setString('port3', port3Controller.text);
                          prefs.setString('port4', port4Controller.text);
                          prefs.setString('port5', port5Controller.text);
                          prefs.setString('port6', port6Controller.text);
                          prefs.setString('port7', port7Controller.text);
                          prefs.setString('port8', port8Controller.text);
                          prefs.setString('slaveip', slaveipController.text);
                          prefs.setString('slaveip2', slaveip2Controller.text);
                          prefs.setString('slaveip3', slaveip3Controller.text);
                          prefs.setString('slaveip4', slaveip4Controller.text);
                          prefs.setString('slaveip5', slaveip5Controller.text);
                          prefs.setString('slaveip6', slaveip6Controller.text);
                          prefs.setString('slaveip7', slaveip7Controller.text);
                          prefs.setString('slaveip8', slaveip8Controller.text);
                          prefs.setString('fan_add', fanController.text);
                          prefs.setString(
                              'gatewayid1', gatewayid1Controller.text);
                          prefs.setString(
                              'gatewayid2', gatewayid2Controller.text);
                          prefs.setString(
                              'gatewayid3', gatewayid3Controller.text);
                          prefs.setString(
                              'gatewayid4', gatewayid4Controller.text);
                          prefs.setString(
                              'gatewayid5', gatewayid5Controller.text);
                          prefs.setString(
                              'gatewayid6', gatewayid6Controller.text);
                          prefs.setString(
                              'gatewayid7', gatewayid7Controller.text);
                          prefs.setString(
                              'gatewayid8', gatewayid8Controller.text);

                          z1 = int.parse(port1Controller.text.toString());
                          z2 = int.parse(port2Controller.text.toString());
                          z3 = int.parse(port3Controller.text.toString());
                          z4 = int.parse(port4Controller.text.toString());
                          z5 = int.parse(port5Controller.text.toString());
                          z6 = int.parse(port6Controller.text.toString());
                          z7 = int.parse(port7Controller.text.toString());
                          z8 = int.parse(port8Controller.text.toString());

                          Navigator.pop(context, 'submit');
                        } else {
                          return showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Alert'),
                              content: const Text(
                                  'Invalid username or password. Try again'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Cancel');
                                    Navigator.pop(context, 'Cancel');
                                  },
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    )),
              ],
            )));
  }
}

////////////////////////////////////////////

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Center(),
    );
  }
}
