// import 'main.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'configip.dart';
// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
//
// int cmd = 212;
// var respCmd;
// var respSid;
// var respData;
// var respLid;
// void masterOnControl(int actPage) async {
//   // print("sds $actPage");
//   Credentials cred2 = await credentials();
//   String clientIp;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       clientIp = cred2.slaveip;
//       break;
//     case 1:
//       clientIp = cred2.slaveip2;
//       break;
//     case 2:
//       clientIp = cred2.slaveip3;
//       break;
//     case 3:
//       clientIp = cred2.slaveip4;
//       break;
//     case 4:
//       clientIp = cred2.slaveip5;
//       break;
//     case 5:
//       clientIp = cred2.slaveip6;
//       break;
//     case 6:
//       clientIp = cred2.slaveip7;
//       break;
//     case 7:
//       clientIp = cred2.slaveip8;
//       break;
//     default:
//       break;
//   }
//   String msgLid;
//   String gateId;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       msgLid = cred2.port1;
//       gateId = cred2.gatewayid1;
//       break;
//     case 1:
//       msgLid = cred2.port2;
//       gateId = cred2.gatewayid2;
//       break;
//     case 2:
//       msgLid = cred2.port3;
//       gateId = cred2.gatewayid3;
//       break;
//     case 3:
//       msgLid = cred2.port4;
//       gateId = cred2.gatewayid4;
//       break;
//     case 4:
//       msgLid = cred2.port5;
//       gateId = cred2.gatewayid5;
//       break;
//     case 5:
//       msgLid = cred2.port6;
//       gateId = cred2.gatewayid6;
//       break;
//     case 6:
//       msgLid = cred2.port7;
//       gateId = cred2.gatewayid7;
//       break;
//     case 7:
//       msgLid = cred2.port8;
//       gateId = cred2.gatewayid8;
//       break;
//     default:
//       break;
//   }
//   var msgBody = jsonEncode({
//     'lid': msgLid,
//     'cmd': '208',
//     'data': '100',
//     'echo': '1',
//     'gateid': gateId,
//     'gatecmd': 0
//   });
//   try {
//     var options = BaseOptions(
//       baseUrl: 'http://$clientIp',
//       connectTimeout: 5000,
//       receiveTimeout: 3000,
//     );
//     var dio = Dio(options);
//     //  dio.interceptors.add(LogInterceptor(responseBody: true));
//     // print("sending on ");
//
//     var response = await dio.post('/post', data: msgBody);
//     //print("finished sending");
//     if (response.statusCode == 200) {
//       respCmd = response.data["cmd"];
//       respSid = response.data["sid"];
//       respData = response.data["data"];
//       respLid = response.data["lid"];
//       // print("response : ${response.data}");
//       updateUi(respCmd, respData, respLid);
//     } else {
//       // print('Request failed with status: ${response.statusCode}.');
//     }
//   } catch (e) {
//     // print(e);
//   }
// }
//
// void masterOffControl(int actPage) async {
//   Credentials cred2 = await credentials();
//   String clientIp;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       clientIp = cred2.slaveip;
//       break;
//     case 1:
//       clientIp = cred2.slaveip2;
//       break;
//     case 2:
//       clientIp = cred2.slaveip3;
//       break;
//     case 3:
//       clientIp = cred2.slaveip4;
//       break;
//     case 4:
//       clientIp = cred2.slaveip5;
//       break;
//     case 5:
//       clientIp = cred2.slaveip6;
//       break;
//     case 6:
//       clientIp = cred2.slaveip7;
//       break;
//     case 7:
//       clientIp = cred2.slaveip8;
//       break;
//     default:
//       break;
//   }
//   String msgLid;
//   String gateId;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       msgLid = cred2.port1;
//       gateId = cred2.gatewayid1;
//       break;
//     case 1:
//       msgLid = cred2.port2;
//       gateId = cred2.gatewayid2;
//       break;
//     case 2:
//       msgLid = cred2.port3;
//       gateId = cred2.gatewayid3;
//       break;
//     case 3:
//       msgLid = cred2.port4;
//       gateId = cred2.gatewayid4;
//       break;
//     case 4:
//       msgLid = cred2.port5;
//       gateId = cred2.gatewayid5;
//       break;
//     case 5:
//       msgLid = cred2.port6;
//       gateId = cred2.gatewayid6;
//       break;
//     case 6:
//       msgLid = cred2.port7;
//       gateId = cred2.gatewayid7;
//       break;
//     case 7:
//       msgLid = cred2.port8;
//       gateId = cred2.gatewayid8;
//       break;
//     default:
//       break;
//   }
//   var msgBody = jsonEncode({
//     'lid': msgLid,
//     'cmd': '212',
//     'data': '0',
//     'echo': '1',
//     'gateid': gateId,
//     'gatecmd': 0
//   });
//   try {
//     var options = BaseOptions(
//       baseUrl: 'http://$clientIp',
//       connectTimeout: 5000,
//       receiveTimeout: 3000,
//     );
//     var dio = Dio(options);
//     //  dio.interceptors.add(LogInterceptor(responseBody: true));
//     var response = await dio.post('/post', data: msgBody);
//     if (response.statusCode == 200) {
//       respCmd = response.data["cmd"];
//       respSid = response.data["sid"];
//       respData = response.data["data"];
//       respLid = response.data["lid"];
//       updateUi(respCmd, respData, respLid);
//     } else {
//       //    print('Request failed with status: ${response.statusCode}.');
//     }
//   } catch (e) {
//     //  print("json bad $e");
//   }
// }
//
// void sliderControl(int actPage) async {
//   Credentials cred2 = await credentials();
//   String clientIp;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       clientIp = cred2.slaveip;
//       break;
//     case 1:
//       clientIp = cred2.slaveip2;
//       break;
//     case 2:
//       clientIp = cred2.slaveip3;
//       break;
//     case 3:
//       clientIp = cred2.slaveip4;
//       break;
//     case 4:
//       clientIp = cred2.slaveip5;
//       break;
//     case 5:
//       clientIp = cred2.slaveip6;
//       break;
//     case 6:
//       clientIp = cred2.slaveip7;
//       break;
//     case 7:
//       clientIp = cred2.slaveip8;
//       break;
//     default:
//       break;
//   }
//   String msgLid;
//   int msgData;
//   String gateId;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       msgLid = cred2.port1;
//       gateId = cred2.gatewayid1;
//       msgData = l1.lightSliderVal.toInt();
//       break;
//     case 1:
//       msgLid = cred2.port2;
//       gateId = cred2.gatewayid2;
//       msgData = l2.lightSliderVal.toInt();
//       break;
//     case 2:
//       msgLid = cred2.port3;
//       gateId = cred2.gatewayid3;
//       msgData = l3.lightSliderVal.toInt();
//       break;
//     case 3:
//       msgLid = cred2.port4;
//       gateId = cred2.gatewayid4;
//       msgData = l4.lightSliderVal.toInt();
//       break;
//     case 4:
//       msgLid = cred2.port5;
//       gateId = cred2.gatewayid5;
//       msgData = l5.lightSliderVal.toInt();
//       break;
//     case 5:
//       msgLid = cred2.port6;
//       gateId = cred2.gatewayid6;
//       msgData = l6.lightSliderVal.toInt();
//       break;
//     case 6:
//       msgLid = cred2.port7;
//       gateId = cred2.gatewayid7;
//       msgData = l7.lightSliderVal.toInt();
//       break;
//     case 7:
//       msgLid = cred2.port8;
//       gateId = cred2.gatewayid8;
//       msgData = l8.lightSliderVal.toInt();
//       break;
//     default:
//       break;
//   }
//   var msgBody = jsonEncode({
//     'lid': msgLid,
//     'cmd': '201',
//     'data': '$msgData',
//     'echo': '1',
//     'gateid': gateId,
//     'gatecmd': 0
//   });
//   try {
//     var options = BaseOptions(
//       baseUrl: 'http://$clientIp',
//       connectTimeout: 5000,
//       receiveTimeout: 3000,
//     );
//     var dio = Dio(options);
//     //  dio.interceptors.add(LogInterceptor(responseBody: true));
//     var response = await dio.post('/post', data: msgBody);
//     if (response.statusCode == 200) {
//       respCmd = response.data["cmd"];
//       respSid = response.data["sid"];
//       respData = response.data["data"];
//       respLid = response.data["lid"];
//       updateUi(respCmd, respData, respLid);
//     } else {
//       //  print('Request failed with status: ${response.statusCode}.');
//     }
//   } catch (e) {
//     //  print(e);
//   }
// }
//
// Future<void> scenedata(int scNo, int actPage) async {
//   Credentials cred2 = await credentials();
//   String clientIp;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       clientIp = cred2.slaveip;
//       break;
//     case 1:
//       clientIp = cred2.slaveip2;
//       break;
//     case 2:
//       clientIp = cred2.slaveip3;
//       break;
//     case 3:
//       clientIp = cred2.slaveip4;
//       break;
//     case 4:
//       clientIp = cred2.slaveip5;
//       break;
//     case 5:
//       clientIp = cred2.slaveip6;
//       break;
//     case 6:
//       clientIp = cred2.slaveip7;
//       break;
//     case 7:
//       clientIp = cred2.slaveip8;
//       break;
//     default:
//       break;
//   }
//   String msgLid;
//   int msgData;
//   String gateId;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       msgLid = cred2.port1;
//       gateId = cred2.gatewayid1;
//       msgData = scNo;
//       break;
//     case 1:
//       msgLid = cred2.port2;
//       gateId = cred2.gatewayid2;
//       msgData = scNo;
//       break;
//     case 2:
//       msgLid = cred2.port3;
//       gateId = cred2.gatewayid3;
//       msgData = scNo;
//       break;
//     case 3:
//       msgLid = cred2.port4;
//       gateId = cred2.gatewayid4;
//       msgData = scNo;
//       break;
//     case 4:
//       msgLid = cred2.port5;
//       gateId = cred2.gatewayid5;
//       msgData = scNo;
//       break;
//     case 5:
//       msgLid = cred2.port6;
//       gateId = cred2.gatewayid6;
//       msgData = scNo;
//       break;
//     case 6:
//       msgLid = cred2.port7;
//       gateId = cred2.gatewayid7;
//       msgData = scNo;
//       break;
//     case 7:
//       msgLid = cred2.port8;
//       gateId = cred2.gatewayid8;
//       msgData = scNo;
//       break;
//     default:
//       break;
//   }
//   var msgBody = jsonEncode({
//     'lid': msgLid,
//     'cmd': '234',
//     'data': '$msgData',
//     'echo': '1',
//     'gateid': gateId,
//     'gatecmd': 0
//   });
//   try {
//     var options = BaseOptions(
//       baseUrl: 'http://$clientIp',
//       connectTimeout: 5000,
//       receiveTimeout: 3000,
//     );
//     var dio = Dio(options);
//     //  dio.interceptors.add(LogInterceptor(responseBody: true));
//     var response = await dio.post('/post', data: msgBody);
//     if (response.statusCode == 200) {
//       respCmd = response.data["cmd"];
//       respSid = response.data["sid"];
//       respData = response.data["data"];
//       respLid = response.data["lid"];
//       updateUi(respCmd, respData, respLid);
//     } else {
//       //  print('Request failed with status: ${response.statusCode}.');
//     }
//   } catch (e) {
//     //  print(e);
//   }
// }
//
// Future<void> fanControl(int dat, int actPage) async {
//   int fanCmd = 0;
//   switch (dat) {
//     case 0:
//       fanCmd = 212;
//       break;
//     case 100:
//       fanCmd = 208;
//       break;
//     default:
//       break;
//   }
//   Credentials cred2 = await credentials();
//   String clientIp;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       clientIp = cred2.slaveip;
//       break;
//     case 1:
//       clientIp = cred2.slaveip2;
//       break;
//     case 2:
//       clientIp = cred2.slaveip3;
//       break;
//     case 3:
//       clientIp = cred2.slaveip4;
//       break;
//     case 4:
//       clientIp = cred2.slaveip5;
//       break;
//     case 5:
//       clientIp = cred2.slaveip6;
//       break;
//     case 6:
//       clientIp = cred2.slaveip7;
//       break;
//     case 7:
//       clientIp = cred2.slaveip8;
//       break;
//     default:
//       break;
//   }
//   String msgLid;
//   String gateId;
//   switch (actPage) {
//
//     /// Change PAGE
//     case 0:
//       msgLid = cred2.port1;
//       gateId = cred2.gatewayid1;
//       break;
//     case 1:
//       msgLid = cred2.port2;
//       gateId = cred2.gatewayid2;
//       break;
//     case 2:
//       msgLid = cred2.port3;
//       gateId = cred2.gatewayid3;
//       break;
//     case 3:
//       msgLid = cred2.port4;
//       gateId = cred2.gatewayid4;
//       break;
//     case 4:
//       msgLid = cred2.port5;
//       gateId = cred2.gatewayid5;
//       break;
//     case 5:
//       msgLid = cred2.port6;
//       gateId = cred2.gatewayid6;
//       break;
//     case 6:
//       msgLid = cred2.port7;
//       gateId = cred2.gatewayid7;
//       break;
//     case 7:
//       msgLid = cred2.port8;
//       gateId = cred2.gatewayid8;
//       break;
//     default:
//       break;
//   }
//   var msgBody = jsonEncode({
//     'lid': msgLid,
//     'cmd': '$fanCmd',
//     'data': '$dat',
//     'echo': '1',
//     'gateid': gateId,
//     'gatecmd': 0
//   });
//   try {
//     var options = BaseOptions(
//       baseUrl: 'http://$clientIp',
//       connectTimeout: 5000,
//       receiveTimeout: 3000,
//     );
//     var dio = Dio(options);
//     //  dio.interceptors.add(LogInterceptor(responseBody: true));
//     var response = await dio.post('/post', data: msgBody);
//     if (response.statusCode == 200) {
//       respCmd = response.data["cmd"];
//       respSid = response.data["sid"];
//       respData = response.data["data"];
//       respLid = response.data["lid"];
//       updateUi(respCmd, respData, respLid);
//     } else {
//       //   print('Request failed with status: ${response.statusCode}.');
//     }
//   } catch (e) {
//     // print(e);
//   }
// }
//
// void updateUi(int cmd, int data, int lid) async {
//   Credentials cred2 = await credentials();
//
//   /// Change PAGE
//   if (cmd == 208 && lid == int.parse(cred2.port1)) // page 1
//   {
//     for (int k = 0; k < 5; k++) {
//       s1.sceneBorderColor[k] = Colors.transparent;
//     }
//     l1.masterOnBorderColor = Colors.white;
//     l1.masterOffBorderColor = Colors.transparent;
//     l1.sliderBorderColor = Colors.transparent;
//     l1.lightSliderVal = 100;
//
//     l1.masterOffController.value = !l1.masterOffController.value;
//     l1.masterOnController.value = !l1.masterOnController.value;
//     // master_on_controller.add(1);
//     l1.lightSliderController.value = !l1.lightSliderController.value;
//     s1.sceneController.value = !s1.sceneController.value;
//   }
//   if (cmd == 208 && lid == int.parse(cred2.port2)) // page 2
//   {
//     for (int k = 0; k < 5; k++) {
//       s2.sceneBorderColor[k] = Colors.transparent;
//     }
//     l2.masterOnBorderColor = Colors.white;
//     l2.masterOffBorderColor = Colors.transparent;
//     l2.sliderBorderColor = Colors.transparent;
//     l2.lightSliderVal = 100;
//
//     l2.masterOffController.value = !l2.masterOffController.value;
//     l2.masterOnController.value = !l2.masterOnController.value;
//     l2.lightSliderController.value = !l2.lightSliderController.value;
//     s2.sceneController.value = !s2.sceneController.value;
//   }
//   if (cmd == 208 && lid == int.parse(cred2.port3)) // page 3
//   {
//     for (int k = 0; k < 5; k++) {
//       s3.sceneBorderColor[k] = Colors.transparent;
//     }
//     l3.masterOnBorderColor = Colors.white;
//     l3.masterOffBorderColor = Colors.transparent;
//     l3.sliderBorderColor = Colors.transparent;
//     l3.lightSliderVal = 100;
//
//     l3.masterOffController.value = !l3.masterOffController.value;
//     l3.masterOnController.value = !l3.masterOnController.value;
//     l3.lightSliderController.value = !l3.lightSliderController.value;
//     s3.sceneController.value = !s3.sceneController.value;
//   }
//   if (cmd == 208 && lid == int.parse(cred2.port4)) // page 4
//   {
//     for (int k = 0; k < 5; k++) {
//       s4.sceneBorderColor[k] = Colors.transparent;
//     }
//     l4.masterOnBorderColor = Colors.white;
//     l4.masterOffBorderColor = Colors.transparent;
//     l4.sliderBorderColor = Colors.transparent;
//     l4.lightSliderVal = 100;
//
//     l4.masterOffController.value = !l4.masterOffController.value;
//     l4.masterOnController.value = !l4.masterOnController.value;
//     l4.lightSliderController.value = !l4.lightSliderController.value;
//     s4.sceneController.value = !s4.sceneController.value;
//   }
//
//   if (cmd == 208 && lid == int.parse(cred2.port5)) // page 5
//   {
//     for (int k = 0; k < 5; k++) {
//       s5.sceneBorderColor[k] = Colors.transparent;
//     }
//     l5.masterOnBorderColor = Colors.white;
//     l5.masterOffBorderColor = Colors.transparent;
//     l5.sliderBorderColor = Colors.transparent;
//     l5.lightSliderVal = 100;
//
//     l5.masterOffController.value = !l5.masterOffController.value;
//     l5.masterOnController.value = !l5.masterOnController.value;
//     l5.lightSliderController.value = !l5.lightSliderController.value;
//     s5.sceneController.value = !s5.sceneController.value;
//   }
//   if (cmd == 208 && lid == int.parse(cred2.port6)) // page 6
//   {
//     for (int k = 0; k < 5; k++) {
//       s6.sceneBorderColor[k] = Colors.transparent;
//     }
//     l6.masterOnBorderColor = Colors.white;
//     l6.masterOffBorderColor = Colors.transparent;
//     l6.sliderBorderColor = Colors.transparent;
//     l6.lightSliderVal = 100;
//
//     l6.masterOffController.value = !l6.masterOffController.value;
//     l6.masterOnController.value = !l6.masterOnController.value;
//     l6.lightSliderController.value = !l6.lightSliderController.value;
//     s6.sceneController.value = !s6.sceneController.value;
//   }
//   if (cmd == 208 && lid == int.parse(cred2.port7)) // page 7
//   {
//     for (int k = 0; k < 5; k++) {
//       s7.sceneBorderColor[k] = Colors.transparent;
//     }
//     l7.masterOnBorderColor = Colors.white;
//     l7.masterOffBorderColor = Colors.transparent;
//     l7.sliderBorderColor = Colors.transparent;
//     l7.lightSliderVal = 100;
//
//     l7.masterOffController.value = !l7.masterOffController.value;
//     l7.masterOnController.value = !l7.masterOnController.value;
//     l7.lightSliderController.value = !l7.lightSliderController.value;
//     s7.sceneController.value = !s7.sceneController.value;
//   }
//   if (cmd == 208 && lid == int.parse(cred2.port8)) // page 8
//   {
//     for (int k = 0; k < 5; k++) {
//       s8.sceneBorderColor[k] = Colors.transparent;
//     }
//     l8.masterOnBorderColor = Colors.white;
//     l8.masterOffBorderColor = Colors.transparent;
//     l8.sliderBorderColor = Colors.transparent;
//     l8.lightSliderVal = 100;
//
//     l8.masterOffController.value = !l8.masterOffController.value;
//     l8.masterOnController.value = !l8.masterOnController.value;
//     l8.lightSliderController.value = !l8.lightSliderController.value;
//     s8.sceneController.value = !s8.sceneController.value;
//   }
//
//   /// Change PAGE
//   if (respCmd == 212 && respLid == int.parse(cred2.port1)) // page 1
//   {
//     for (int k = 0; k < 5; k++) {
//       s1.sceneBorderColor[k] = Colors.transparent;
//     }
//     l1.masterOffBorderColor = Colors.white;
//     l1.masterOnBorderColor = Colors.transparent;
//     l1.sliderBorderColor = Colors.transparent;
//     l1.lightSliderVal = 0;
//
//     l1.masterOffController.value = !l1.masterOffController.value;
//     l1.masterOnController.value = !l1.masterOnController.value;
//     //master_on_controller.add(1);
//     l1.lightSliderController.value = !l1.lightSliderController.value;
//     s1.sceneController.value = !s1.sceneController.value;
//   }
//   if (respCmd == 212 && respLid == int.parse(cred2.port2)) // page 2
//   {
//     for (int k = 0; k < 5; k++) {
//       s2.sceneBorderColor[k] = Colors.transparent;
//     }
//     l2.masterOffBorderColor = Colors.white;
//     l2.masterOnBorderColor = Colors.transparent;
//     l2.sliderBorderColor = Colors.transparent;
//     l2.lightSliderVal = 0;
//
//     l2.masterOffController.value = !l2.masterOffController.value;
//     l2.masterOnController.value = !l2.masterOnController.value;
//     l2.lightSliderController.value = !l2.lightSliderController.value;
//     s2.sceneController.value = !s2.sceneController.value;
//   }
//   if (respCmd == 212 && respLid == int.parse(cred2.port3)) // page 3
//   {
//     for (int k = 0; k < 5; k++) {
//       s3.sceneBorderColor[k] = Colors.transparent;
//     }
//     l3.masterOffBorderColor = Colors.white;
//     l3.masterOnBorderColor = Colors.transparent;
//     l3.sliderBorderColor = Colors.transparent;
//     l3.lightSliderVal = 0;
//
//     l3.masterOffController.value = !l3.masterOffController.value;
//     l3.masterOnController.value = !l3.masterOnController.value;
//     //master_on_controller.add(1);
//     l3.lightSliderController.value = !l3.lightSliderController.value;
//     s3.sceneController.value = !s3.sceneController.value;
//   }
//   if (respCmd == 212 && respLid == int.parse(cred2.port4)) // page 4
//   {
//     for (int k = 0; k < 5; k++) {
//       s4.sceneBorderColor[k] = Colors.transparent;
//     }
//     l4.masterOffBorderColor = Colors.white;
//     l4.masterOnBorderColor = Colors.transparent;
//     l4.sliderBorderColor = Colors.transparent;
//     l4.lightSliderVal = 0;
//
//     l4.masterOffController.value = !l4.masterOffController.value;
//     l4.masterOnController.value = !l4.masterOnController.value;
//     //master_on_controller.add(1);
//     l4.lightSliderController.value = !l4.lightSliderController.value;
//     s4.sceneController.value = !s4.sceneController.value;
//   }
//   if (respCmd == 212 && respLid == int.parse(cred2.port5)) // page 5
//   {
//     for (int k = 0; k < 5; k++) {
//       s5.sceneBorderColor[k] = Colors.transparent;
//     }
//     l5.masterOffBorderColor = Colors.white;
//     l5.masterOnBorderColor = Colors.transparent;
//     l5.sliderBorderColor = Colors.transparent;
//     l5.lightSliderVal = 0;
//
//     l5.masterOffController.value = !l5.masterOffController.value;
//     l5.masterOnController.value = !l5.masterOnController.value;
//     //master_on_controller.add(1);
//     l5.lightSliderController.value = !l5.lightSliderController.value;
//     s5.sceneController.value = !s5.sceneController.value;
//   }
//   if (respCmd == 212 && respLid == int.parse(cred2.port6)) // page 6
//   {
//     for (int k = 0; k < 5; k++) {
//       s6.sceneBorderColor[k] = Colors.transparent;
//     }
//     l6.masterOffBorderColor = Colors.white;
//     l6.masterOnBorderColor = Colors.transparent;
//     l6.sliderBorderColor = Colors.transparent;
//     l6.lightSliderVal = 0;
//
//     l6.masterOffController.value = !l6.masterOffController.value;
//     l6.masterOnController.value = !l6.masterOnController.value;
//     //master_on_controller.add(1);
//     l6.lightSliderController.value = !l6.lightSliderController.value;
//     s6.sceneController.value = !s6.sceneController.value;
//   }
//   if (respCmd == 212 && respLid == int.parse(cred2.port7)) // page 7
//   {
//     for (int k = 0; k < 5; k++) {
//       s7.sceneBorderColor[k] = Colors.transparent;
//     }
//     l7.masterOffBorderColor = Colors.white;
//     l7.masterOnBorderColor = Colors.transparent;
//     l7.sliderBorderColor = Colors.transparent;
//     l7.lightSliderVal = 0;
//
//     l7.masterOffController.value = !l7.masterOffController.value;
//     l7.masterOnController.value = !l7.masterOnController.value;
//     //master_on_controller.add(1);
//     l7.lightSliderController.value = !l7.lightSliderController.value;
//     s7.sceneController.value = !s7.sceneController.value;
//   }
//   if (respCmd == 212 && respLid == int.parse(cred2.port8)) // page 8
//   {
//     for (int k = 0; k < 5; k++) {
//       s8.sceneBorderColor[k] = Colors.transparent;
//     }
//     l8.masterOffBorderColor = Colors.white;
//     l8.masterOnBorderColor = Colors.transparent;
//     l8.sliderBorderColor = Colors.transparent;
//     l8.lightSliderVal = 0;
//
//     l8.masterOffController.value = !l8.masterOffController.value;
//     l8.masterOnController.value = !l8.masterOnController.value;
//     //master_on_controller.add(1);
//     l8.lightSliderController.value = !l8.lightSliderController.value;
//     s8.sceneController.value = !s8.sceneController.value;
//   }
//
//   /// Change PAGE
//   if (respCmd == 201 && respLid == int.parse(cred2.port1)) // page 1
//   {
//     for (int k = 0; k < 5; k++) {
//       s1.sceneBorderColor[k] = Colors.transparent;
//     }
//     l1.sliderBorderColor = Colors.white;
//     l1.masterOnBorderColor = Colors.transparent;
//     l1.masterOffBorderColor = Colors.transparent;
//     l1.masterOffController.value = !l1.masterOffController.value;
//     l1.masterOnController.value = !l1.masterOnController.value;
//     //master_on_controller.add(1);
//     l1.lightSliderController.value = !l1.lightSliderController.value;
//     s1.sceneController.value = !s1.sceneController.value;
//   }
//   if (respCmd == 201 && respLid == int.parse(cred2.port2)) // page 2
//   {
//     for (int k = 0; k < 5; k++) {
//       s2.sceneBorderColor[k] = Colors.transparent;
//     }
//     l2.sliderBorderColor = Colors.white;
//     l2.masterOnBorderColor = Colors.transparent;
//     l2.masterOffBorderColor = Colors.transparent;
//
//     l2.masterOffController.value = !l2.masterOffController.value;
//     l2.masterOnController.value = !l2.masterOnController.value;
//     l2.lightSliderController.value = !l2.lightSliderController.value;
//     s2.sceneController.value = !s2.sceneController.value;
//   }
//   if (respCmd == 201 && respLid == int.parse(cred2.port3)) // page 3
//   {
//     for (int k = 0; k < 5; k++) {
//       s3.sceneBorderColor[k] = Colors.transparent;
//     }
//     l3.sliderBorderColor = Colors.white;
//     l3.masterOnBorderColor = Colors.transparent;
//     l3.masterOffBorderColor = Colors.transparent;
//
//     l3.masterOffController.value = !l3.masterOffController.value;
//     l3.masterOnController.value = !l3.masterOnController.value;
//     l3.lightSliderController.value = !l3.lightSliderController.value;
//     s3.sceneController.value = !s3.sceneController.value;
//   }
//   if (respCmd == 201 && respLid == int.parse(cred2.port4)) // page 4
//   {
//     for (int k = 0; k < 5; k++) {
//       s4.sceneBorderColor[k] = Colors.transparent;
//     }
//     l4.sliderBorderColor = Colors.white;
//     l4.masterOnBorderColor = Colors.transparent;
//     l4.masterOffBorderColor = Colors.transparent;
//     l4.masterOffController.value = !l4.masterOffController.value;
//     l4.masterOnController.value = !l4.masterOnController.value;
//     //master_on_controller.add(1);
//     l4.lightSliderController.value = !l4.lightSliderController.value;
//     s4.sceneController.value = !s4.sceneController.value;
//   }
//   if (respCmd == 201 && respLid == int.parse(cred2.port5)) // page 5
//   {
//     for (int k = 0; k < 5; k++) {
//       s5.sceneBorderColor[k] = Colors.transparent;
//     }
//     l5.sliderBorderColor = Colors.white;
//     l5.masterOnBorderColor = Colors.transparent;
//     l5.masterOffBorderColor = Colors.transparent;
//     l5.masterOffController.value = !l5.masterOffController.value;
//     l5.masterOnController.value = !l5.masterOnController.value;
//     //master_on_controller.add(1);
//     l5.lightSliderController.value = !l5.lightSliderController.value;
//     s5.sceneController.value = !s5.sceneController.value;
//   }
//   if (respCmd == 201 && respLid == int.parse(cred2.port6)) // page 6
//   {
//     for (int k = 0; k < 5; k++) {
//       s6.sceneBorderColor[k] = Colors.transparent;
//     }
//     l6.sliderBorderColor = Colors.white;
//     l6.masterOnBorderColor = Colors.transparent;
//     l6.masterOffBorderColor = Colors.transparent;
//     l6.masterOffController.value = !l6.masterOffController.value;
//     l6.masterOnController.value = !l6.masterOnController.value;
//     //master_on_controller.add(1);
//     l6.lightSliderController.value = !l6.lightSliderController.value;
//     s6.sceneController.value = !s6.sceneController.value;
//   }
//   if (respCmd == 201 && respLid == int.parse(cred2.port7)) // page 7
//   {
//     for (int k = 0; k < 5; k++) {
//       s7.sceneBorderColor[k] = Colors.transparent;
//     }
//     l7.sliderBorderColor = Colors.white;
//     l7.masterOnBorderColor = Colors.transparent;
//     l7.masterOffBorderColor = Colors.transparent;
//     l7.masterOffController.value = !l7.masterOffController.value;
//     l7.masterOnController.value = !l7.masterOnController.value;
//     //master_on_controller.add(1);
//     l7.lightSliderController.value = !l7.lightSliderController.value;
//     s7.sceneController.value = !s7.sceneController.value;
//   }
//   if (respCmd == 201 && respLid == int.parse(cred2.port8)) // page 8
//   {
//     for (int k = 0; k < 5; k++) {
//       s8.sceneBorderColor[k] = Colors.transparent;
//     }
//     l8.sliderBorderColor = Colors.white;
//     l8.masterOnBorderColor = Colors.transparent;
//     l8.masterOffBorderColor = Colors.transparent;
//     l8.masterOffController.value = !l8.masterOffController.value;
//     l8.masterOnController.value = !l8.masterOnController.value;
//     //master_on_controller.add(1);
//     l8.lightSliderController.value = !l8.lightSliderController.value;
//     s8.sceneController.value = !s8.sceneController.value;
//   }
//
//   /// Change PAGE
//   if (respCmd == 234 && respLid == int.parse(cred2.port1)) // page 1
//   {
//     for (int k = 0; k < 5; k++) {
//       s1.sceneBorderColor[k] = Colors.transparent;
//     }
//     s1.sceneBorderColor[respData] = Colors.white;
//     l1.masterOnBorderColor = Colors.transparent;
//     l1.masterOffBorderColor = Colors.transparent;
//     l1.sliderBorderColor = Colors.transparent;
//     //light_slider_value=100;
//     l1.masterOffController.value = !l1.masterOffController.value;
//     l1.masterOnController.value = !l1.masterOnController.value;
//     l1.lightSliderController.value = !l1.lightSliderController.value;
//     s1.sceneBorderColor[respData] = Colors.white;
//     s1.sceneController.value = !s1.sceneController.value;
//   }
//   if (respCmd == 234 && respLid == int.parse(cred2.port2)) // page 2
//   {
//     for (int k = 0; k < 5; k++) {
//       s2.sceneBorderColor[k] = Colors.transparent;
//     }
//     s2.sceneBorderColor[respData] = Colors.white;
//     l2.masterOnBorderColor = Colors.transparent;
//     l2.masterOffBorderColor = Colors.transparent;
//     l2.sliderBorderColor = Colors.transparent;
//     //light_slider_value=100;
//     l2.masterOffController.value = !l2.masterOffController.value;
//     l2.masterOnController.value = !l2.masterOnController.value;
//     l2.lightSliderController.value = !l2.lightSliderController.value;
//     s2.sceneController.value = !s2.sceneController.value;
//   }
//   if (respCmd == 234 && respLid == int.parse(cred2.port3)) // page 3
//   {
//     for (int k = 0; k < 5; k++) {
//       s3.sceneBorderColor[k] = Colors.transparent;
//     }
//     s3.sceneBorderColor[respData] = Colors.white;
//     l3.masterOnBorderColor = Colors.transparent;
//     l3.masterOffBorderColor = Colors.transparent;
//     l3.sliderBorderColor = Colors.transparent;
//     //light_slider_value=100;
//     l3.masterOffController.value = !l3.masterOffController.value;
//     l3.masterOnController.value = !l3.masterOnController.value;
//     l3.lightSliderController.value = !l3.lightSliderController.value;
//     s3.sceneController.value = !s3.sceneController.value;
//   }
//   if (respCmd == 234 && respLid == int.parse(cred2.port4)) // page 4
//   {
//     for (int k = 0; k < 5; k++) {
//       s4.sceneBorderColor[k] = Colors.transparent;
//     }
//     s4.sceneBorderColor[respData] = Colors.white;
//     l4.masterOnBorderColor = Colors.transparent;
//     l4.masterOffBorderColor = Colors.transparent;
//     l4.sliderBorderColor = Colors.transparent;
//     //light_slider_value=100;
//     l4.masterOffController.value = !l4.masterOffController.value;
//     l4.masterOnController.value = !l4.masterOnController.value;
//     l4.lightSliderController.value = !l4.lightSliderController.value;
//     s4.sceneBorderColor[respData] = Colors.white;
//     s4.sceneController.value = !s4.sceneController.value;
//   }
//   if (respCmd == 234 && respLid == int.parse(cred2.port5)) // page 5
//   {
//     for (int k = 0; k < 5; k++) {
//       s5.sceneBorderColor[k] = Colors.transparent;
//     }
//     s5.sceneBorderColor[respData] = Colors.white;
//     l5.masterOnBorderColor = Colors.transparent;
//     l5.masterOffBorderColor = Colors.transparent;
//     l5.sliderBorderColor = Colors.transparent;
//     //light_slider_value=100;
//     l5.masterOffController.value = !l5.masterOffController.value;
//     l5.masterOnController.value = !l5.masterOnController.value;
//     l5.lightSliderController.value = !l5.lightSliderController.value;
//     s5.sceneBorderColor[respData] = Colors.white;
//     s5.sceneController.value = !s5.sceneController.value;
//   }
//   if (respCmd == 234 && respLid == int.parse(cred2.port6)) // page 6
//   {
//     for (int k = 0; k < 5; k++) {
//       s6.sceneBorderColor[k] = Colors.transparent;
//     }
//     s6.sceneBorderColor[respData] = Colors.white;
//     l6.masterOnBorderColor = Colors.transparent;
//     l6.masterOffBorderColor = Colors.transparent;
//     l6.sliderBorderColor = Colors.transparent;
//     //light_slider_value=100;
//     l6.masterOffController.value = !l6.masterOffController.value;
//     l6.masterOnController.value = !l6.masterOnController.value;
//     l6.lightSliderController.value = !l6.lightSliderController.value;
//     s6.sceneBorderColor[respData] = Colors.white;
//     s6.sceneController.value = !s6.sceneController.value;
//   }
//   if (respCmd == 234 && respLid == int.parse(cred2.port7)) // page 7
//   {
//     for (int k = 0; k < 5; k++) {
//       s7.sceneBorderColor[k] = Colors.transparent;
//     }
//     s7.sceneBorderColor[respData] = Colors.white;
//     l7.masterOnBorderColor = Colors.transparent;
//     l7.masterOffBorderColor = Colors.transparent;
//     l7.sliderBorderColor = Colors.transparent;
//     //light_slider_value=100;
//     l7.masterOffController.value = !l7.masterOffController.value;
//     l7.masterOnController.value = !l7.masterOnController.value;
//     l7.lightSliderController.value = !l7.lightSliderController.value;
//     s7.sceneBorderColor[respData] = Colors.white;
//     s7.sceneController.value = !s7.sceneController.value;
//   }
//   if (respCmd == 234 && respLid == int.parse(cred2.port8)) // page 8
//   {
//     for (int k = 0; k < 5; k++) {
//       s8.sceneBorderColor[k] = Colors.transparent;
//     }
//     s8.sceneBorderColor[respData] = Colors.white;
//     l8.masterOnBorderColor = Colors.transparent;
//     l8.masterOffBorderColor = Colors.transparent;
//     l8.sliderBorderColor = Colors.transparent;
//     //light_slider_value=100;
//     l8.masterOffController.value = !l8.masterOffController.value;
//     l8.masterOnController.value = !l8.masterOnController.value;
//     l8.lightSliderController.value = !l8.lightSliderController.value;
//     s8.sceneBorderColor[respData] = Colors.white;
//     s8.sceneController.value = !s8.sceneController.value;
//   }
//
//   /// Change PAGE
//   if (respData == 100 && respCmd == 100) {
//     f2.fanSpeedButtonColor[5] = Color.fromRGBO(29, 45, 179, 1.0);
//     f2.fanSpeedButtonColor[0] =
//         Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6);
//     f2.fanController.value = !f2.fanController.value;
//     //fan_icon_animation_duration=Duration(seconds: 1);
//   } else if (respData == 0 && respCmd == 100) // page 2
//   {
//     f2.fanSpeedButtonColor[0] = Color.fromRGBO(29, 45, 179, 1.0);
//     f2.fanSpeedButtonColor[5] =
//         Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6);
//     f2.fanController.value = !f2.fanController.value;
//     //fan_icon_animation_duration=Duration(seconds: 0);
//   }
// }
//
// //
// // void updateUi()
// // {
// //   if((server_data==zoneid || server_data==address_type) && server_cmd==234)
// //   {
// //     // print("scene data verified");
// //     master_on_border_color=Colors.transparent;
// //     master_off_border_color=Colors.transparent;
// //     slider_border_color=Colors.transparent;
// //     //light_slider_value=100;
// //     master_off_controller.add(1);
// //     master_on_controller.add(1);
// //     light_slider_controller.add(1);
// //     scene_controller.add(1);
// //
// //     try{
// //       master_off_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       master_on_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       light_slider_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       scene_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //   }
// //   else  if(server_data==zoneid &&  server_cmd==208)
// //   {
// //     //latest_slider_response=server_zone_data;
// //     master_on_border_color=Colors.white;
// //     master_off_border_color=Colors.transparent;
// //     slider_border_color=Colors.transparent;
// //     light_slider_value=100;
// //
// //     master_off_controller.add(1);
// //     master_on_controller.add(1);
// //     light_slider_controller.add(1);
// //     scene_controller.add(1);
// //
// //     try{
// //       master_off_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       master_on_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       light_slider_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       scene_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //   }
// //   else  if(server_data==zoneid &&  server_cmd==212)
// //   {
// //     // latest_slider_response=server_zone_data;
// //     master_off_border_color=Colors.white;
// //     master_on_border_color=Colors.transparent;
// //     slider_border_color=Colors.transparent;
// //     light_slider_value=0;
// //
// //     master_off_controller.add(1);
// //     master_on_controller.add(1);
// //     light_slider_controller.add(1);
// //     scene_controller.add(1);
// //
// //     try{
// //       master_off_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       master_on_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       light_slider_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       scene_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //   }
// //   else  if(server_data==zoneid &&  server_cmd==201)
// //   {
// //     // light_slider_value=server_zone_data;
// //     //latest_slider_response=server_zone_data;
// //     slider_border_color=Colors.white;
// //     master_on_border_color=Colors.transparent;
// //     master_off_border_color=Colors.transparent;
// //     master_off_controller.add(1);
// //     master_on_controller.add(1);
// //     light_slider_controller.add(1);
// //     scene_controller.add(1);
// //
// //     try{
// //       master_off_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       master_on_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       light_slider_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //     try{
// //       scene_controller.stream.drain();
// //     }
// //     catch(e)
// //     {
// //     }
// //   }
// //   else if(server_data==zoneid && server_cmd==100)
// //   {
// //     //  print("fan data verified");
// //     for(int i=0;i<7;i++)
// //     {
// //       fan_speed_button_color[i]= Color.fromRGBO(116, 140, 194,1).withOpacity(0.6);
// //     }
// //     if(server_zone_data>=0 && server_zone_data<10)
// //     {
// //       server_fan_speed=0;
// //       fan_speed_button_color[6]= Color.fromRGBO(29, 45, 179, 1.0);
// //       fan_icon_animation_duration=Duration(milliseconds: 0);
// //     }
// //     else if(server_zone_data>=10 && server_zone_data<20)
// //     {
// //       server_fan_speed=1;
// //       fan_speed_button_color[0]= Color.fromRGBO(29, 45, 179, 1.0);
// //       fan_icon_animation_duration=Duration(milliseconds: 750);
// //     }
// //     else if(server_zone_data>=20 && server_zone_data<30)
// //     {
// //       server_fan_speed=2;
// //       fan_speed_button_color[1]= Color.fromRGBO(29, 45, 179, 1.0);
// //       fan_icon_animation_duration=Duration(milliseconds: 1500);
// //     }
// //     else if(server_zone_data>=30 && server_zone_data<50)
// //     {
// //       server_fan_speed=3;
// //       fan_speed_button_color[2]= Color.fromRGBO(29, 45, 179, 1.0);
// //       fan_icon_animation_duration=Duration(milliseconds: 2500);
// //     }
// //     else if(server_zone_data>=50 && server_zone_data<60)
// //     {
// //       server_fan_speed=4;
// //       fan_speed_button_color[3]= Color.fromRGBO(29, 45, 179, 1.0);
// //       fan_icon_animation_duration=Duration(milliseconds: 3500);
// //     }
// //     else if(server_zone_data>=60 && server_zone_data<80)
// //     {
// //       server_fan_speed=5;
// //       fan_speed_button_color[4]= Color.fromRGBO(29, 45, 179, 1.0);
// //       fan_icon_animation_duration=Duration(milliseconds: 4000);
// //     }
// //     else if(server_zone_data>=80 && server_zone_data<=100)
// //     {
// //       server_fan_speed=6;
// //       fan_speed_button_color[5]= Color.fromRGBO(29, 45, 179, 1.0);
// //       fan_icon_animation_duration=Duration(seconds: 7);
// //     }
// //     fan_controller.add(1);
// //   }
// //   else if(server_data==zoneid && server_cmd==44)
// //   {
// //     sensor_color=Colors.yellow;
// //     sensor_cmd=45;
// //     sensor_controller.add(1);
// //   }
// //   else if(server_data==zoneid && server_cmd==45)
// //   {
// //     sensor_color=Colors.white;
// //     sensor_cmd=44;
// //     sensor_controller.add(1);
// //   }
// // }
