//
// import 'package:flutter_app/scene_widget.dart';
//
// import 'main.dart';
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'configip.dart';
// import 'package:flutter/material.dart';
// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;
//
// int cmd=212;
//
// void http_test() async {
//   //Uri.http()  // This example uses the Google Books API to search for books about http.
//   // https://developers.google.com/books/docs/overview
//   var url =
//   Uri.http('192.168.1.178','post');
//
//   // Await the http get response, then decode the json-formatted response.
//   var response = await http.post(url,body: "{cmd : 210}");
//   if (response.statusCode == 200) {
//     var jsonResponse =
//     convert.jsonDecode(response.body) as Map<String, dynamic>;
//     var itemCount = jsonResponse['cmd'];
//     print('Number of books about http: $itemCount.');
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }
//
// void keep_alive1() async {
//
//   //print("entering keep alive 1");
//   tcp_response_status1=0;
//   try
//   {
//     if(socket1==null)            /////// socket1 1
//         {
//       tcp_response_handler1();
//     }
//     else
//     {
//       socket1.write("ALIVE");
//     }
//     try
//     {
//       response_timer1.cancel();
//     }
//     catch(e)
//     {
//     }
//     response_timer1=Timer(response_timeout_duration1,tcp_response_handler1);
//   }
//   catch (e)
//   {
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//   }
// }
// ////////////////////////////////////////////////////////
// void keep_alive2() async {
//  // print("entering keep alive 2");
//   tcp_response_status2=0;
//   try
//   {
//     if(socket2==null)            /////// socket1 1
//         {
//       tcp_response_handler2();
//     }
//     else
//     {
//       socket2.write("ALIVE");
//     }
//     try
//     {
//       response_timer2.cancel();
//     }
//     catch(e)
//     {
//     }
//     response_timer2=Timer(response_timeout_duration2,tcp_response_handler2);
//   }
//   catch (e)
//   {
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//   }
// }
// ///////////////////////////////////////////////////////////
// void keep_alive3() async {
//  // print("entering keep alive 3");
//   tcp_response_status3=0;
//   try
//   {
//     if(socket3==null)            /////// socket1 1
//         {
//       tcp_response_handler3();
//     }
//     else
//     {
//       socket3.write("ALIVE");
//     }
//     try
//     {
//       response_timer3.cancel();
//     }
//     catch(e)
//     {
//     }
//     response_timer3=Timer(response_timeout_duration3,tcp_response_handler3);
//   }
//   catch (e)
//   {
//     if(slaveip3!=null)
//     {
//       tcp_response_handler3();
//     }
//   }
// }
// ///////////////////////////////////////////////////////////
// void keep_alive4() async {
//   //print("entering keep alive 4");
//   tcp_response_status4=0;
//   try
//   {
//     if(socket4==null)            /////// socket1 1
//         {
//       tcp_response_handler4();
//     }
//     else
//     {
//       socket4.write("ALIVE");
//     }
//     try
//     {
//       response_timer4.cancel();
//     }
//     catch(e)
//     {
//     }
//     response_timer4=Timer(response_timeout_duration4,tcp_response_handler4);
//   }
//   catch (e)
//   {
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
// }
//
// /////////////////////////////////////////////////////////////
//
// void tcp_response_handler1() async
// {
//   if(tcp_response_status1==0 )
//   {
//     server1_connection_status=0;
//     try
//     {
//       socket1.flush();
//       socket1.destroy();
//     }
//     catch(e)
//     {
//
//     }
//     try {
//       credentials();
//       if(slaveip=='0')
//       {
//         final prefs = await SharedPreferences.getInstance();
//         slaveip = prefs.getString('slaveip');
//       }
//
//       if(zoneid==null)
//       {
//         final prefs = await SharedPreferences.getInstance();
//         zoneid = prefs.getInt('zoneid');
//       }
//
//       socket1 = await Socket.connect(slaveip, port1);
//       // print("connected");
//       server1_connection_status=1;
//       socket1.listen(
//             (Uint8List data) {
//           //   print("data received");
//           tcp_response_status1=1;
//           String serverResponse = String.fromCharCodes(data);
//           var body;
//           try
//           {
//             body = json.decode(serverResponse);
//             server_data=body['lid'];
//             server_zone_data=body['data'];
//             server_cmd=body['cmd'];
//           }
//           catch(e)
//           {
//             // print(e);
//           }
//           if(tcp_response_status3==1 && tcp_response_status2==1&&tcp_response_status1==1&&tcp_response_status4==1) {
//             update_ui();
//           }
//           // print("socket1 data received as $serverResponse");
//           // print(serverResponse);
//           try
//           {
//             keep_alive_timer1.cancel();
//             keep_alive_timer1=Timer.periodic(keep_alive_duration1, (timer) {
//               keep_alive1();
//             });
//           }
//           catch(e)
//           {
//
//           }
//         },
//         // handle errors
//         onError: (error) {
//           // print("on error called");
//           tcp_response_status1=0;
//           server1_connection_status=0;
//           light_slider_controller.add(1);
//           try {
//             socket1.flush();
//             socket1.destroy();
//             tcp_status=0;
//           }
//           catch(e)
//           {
//
//           }
//         },
//
//         onDone: () {
//           //  print("on done called");
//           tcp_response_status1=0;
//           server1_connection_status=0;
//           light_slider_controller.add(1);
//           try {
//
//             tcp_status=0;
//             socket1.flush();
//             socket1.destroy();
//           }
//           catch(e)
//           {
//
//           }
//         },
//       );
//     }
//     catch(e)
//     {
//       tcp_status=0;
//     }
//
//   }
//   else
//   {
//     tcp_status=1;
//   }
// }
//
// void tcp_response_handler2() async
// {
//   if(tcp_response_status2==0 )
//   {
//     server2_connection_status=0;
//     try
//     {
//       socket2.flush();
//       socket2.destroy();
//     }
//     catch(e)
//     {
//
//     }
//     try {
//       credentials();
//       if(slaveip2=='0')
//       {
//         final prefs = await SharedPreferences.getInstance();
//         slaveip2 = prefs.getString('slaveip2');
//       }
//
//       if(zoneid==null)
//       {
//         final prefs = await SharedPreferences.getInstance();
//         zoneid = prefs.getInt('zoneid');
//       }
//
//       socket2 = await Socket.connect(slaveip2, port2);
//       // print("connected");
//       server2_connection_status=1;
//       socket2.listen(
//             (Uint8List data) {
//           //   print("data received");
//           tcp_response_status2=1;
//           String serverResponse = String.fromCharCodes(data);
//           var body;
//           try
//           {
//             body = json.decode(serverResponse);
//             server_data=body['lid'];
//             server_zone_data=body['data'];
//             server_cmd=body['cmd'];
//           }
//           catch(e)
//           {
//             // print(e);
//           }
//           if(tcp_response_status3==1 && tcp_response_status2==1&&tcp_response_status1==1&&tcp_response_status4==1) {
//             update_ui();
//           }
//           // print("socket1 data received as $serverResponse");
//           // print(serverResponse);
//           try
//           {
//             keep_alive_timer2.cancel();
//             keep_alive_timer2=Timer.periodic(keep_alive_duration2, (timer) {
//               keep_alive2();
//             });
//           }
//           catch(e)
//           {
//
//           }
//         },
//         // handle errors
//         onError: (error) {
//           // print("on error called");
//           tcp_response_status2=0;
//           server2_connection_status=0;
//           try {
//             socket2.flush();
//             socket2.destroy();
//             tcp_status=0;
//           }
//           catch(e)
//           {
//
//           }
//         },
//
//         onDone: () {
//           //  print("on done called");
//           tcp_response_status2=0;
//           server2_connection_status=0;
//           try {
//
//             tcp_status=0;
//             socket2.flush();
//             socket2.destroy();
//           }
//           catch(e)
//           {
//
//           }
//         },
//       );
//     }
//     catch(e)
//     {
//       tcp_status=0;
//     }
//
//   }
//   else
//   {
//     tcp_status=1;
//   }
// }
//
// void tcp_response_handler3() async
// {
//   if(tcp_response_status3==0 )
//   {
//     server3_connection_status=0;
//     try
//     {
//       socket3.flush();
//       socket3.destroy();
//     }
//     catch(e)
//     {
//
//     }
//     try {
//       credentials();
//       if(slaveip3=='0')
//       {
//         final prefs = await SharedPreferences.getInstance();
//         slaveip3 = prefs.getString('slaveip3');
//       }
//
//       if(zoneid==null)
//       {
//         final prefs = await SharedPreferences.getInstance();
//         zoneid = prefs.getInt('zoneid');
//       }
//
//       socket3 = await Socket.connect(slaveip3, port3);
//       // print("connected");
//       server3_connection_status=1;
//       light_slider_controller.add(1);
//       socket3.listen(
//             (Uint8List data) {
//           //   print("data received");
//           tcp_response_status3=1;
//           String serverResponse = String.fromCharCodes(data);
//           var body;
//           try
//           {
//             body = json.decode(serverResponse);
//             server_data=body['lid'];
//             server_zone_data=body['data'];
//             server_cmd=body['cmd'];
//           }
//           catch(e)
//           {
//             // print(e);
//           }
//           if(tcp_response_status3==1 && tcp_response_status2==1&&tcp_response_status1==1&&tcp_response_status4==1) {
//             update_ui();
//           }
//           // print("socket1 data received as $serverResponse");
//           // print(serverResponse);
//           try
//           {
//             keep_alive_timer3.cancel();
//             keep_alive_timer3=Timer.periodic(keep_alive_duration3, (timer) {
//               keep_alive3();
//             });
//           }
//           catch(e)
//           {
//
//           }
//         },
//         // handle errors
//         onError: (error) {
//           // print("on error called");
//           tcp_response_status3=0;
//           server3_connection_status=0;
//           try {
//             socket3.flush();
//             socket3.destroy();
//             tcp_status=0;
//           }
//           catch(e)
//           {
//
//           }
//         },
//
//         onDone: () {
//           //  print("on done called");
//           tcp_response_status3=0;
//           server3_connection_status=0;
//           try {
//
//             tcp_status=0;
//             socket3.flush();
//             socket3.destroy();
//           }
//           catch(e)
//           {
//
//           }
//         },
//       );
//     }
//     catch(e)
//     {
//       tcp_status=0;
//     }
//
//   }
//   else
//   {
//     tcp_status=1;
//   }
// }
//
// void tcp_response_handler4() async
// {
//   if(tcp_response_status4==0 )
//   {
//     server4_connection_status=0;
//     try
//     {
//       socket4.flush();
//       socket4.destroy();
//     }
//     catch(e)
//     {
//
//     }
//     try {
//       credentials();
//       if(slaveip4==null)
//       {
//         final prefs = await SharedPreferences.getInstance();
//         slaveip4 = prefs.getString('slaveip4');
//       }
//
//       if(zoneid==null)
//       {
//         final prefs = await SharedPreferences.getInstance();
//         zoneid = prefs.getInt('zoneid');
//       }
//
//       socket4 = await Socket.connect(slaveip4, port4);
//       // print("connected");
//       server4_connection_status=1;
//       socket4.listen(
//             (Uint8List data) {
//           //   print("data received");
//           tcp_response_status4=1;
//           String serverResponse = String.fromCharCodes(data);
//           var body;
//           try
//           {
//             body = json.decode(serverResponse);
//             server_data=body['lid'];
//             server_zone_data=body['data'];
//             server_cmd=body['cmd'];
//           }
//           catch(e)
//           {
//             // print(e);
//           }
//           if(tcp_response_status3==1 && tcp_response_status2==1&&tcp_response_status1==1&&tcp_response_status4==1) {
//             update_ui();
//           }
//           // print("socket1 data received as $serverResponse");
//           // print(serverResponse);
//           try
//           {
//             keep_alive_timer4.cancel();
//             keep_alive_timer4=Timer.periodic(keep_alive_duration4, (timer) {
//               keep_alive4();
//             });
//           }
//           catch(e)
//           {
//
//           }
//         },
//         // handle errors
//         onError: (error) {
//           // print("on error called");
//           tcp_response_status4=0;
//           server4_connection_status=0;
//           try {
//             socket4.flush();
//             socket4.destroy();
//             tcp_status=0;
//           }
//           catch(e)
//           {
//
//           }
//         },
//
//         onDone: () {
//           //  print("on done called");
//           tcp_response_status4=0;
//           server4_connection_status=0;
//           try {
//
//             tcp_status=0;
//             socket4.flush();
//             socket4.destroy();
//           }
//           catch(e)
//           {
//
//           }
//         },
//       );
//     }
//     catch(e)
//     {
//       tcp_status=0;
//     }
//
//   }
//   else
//   {
//     tcp_status=1;
//   }
// }
//
// Future<void> scenedata(int sc_no) async {
//
//   var scene1_js_body;
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//
//     if(slaveip=='0'||slaveip==null)
//       {
//         tcp_response_status1=1;
//       }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     if(address_type==17)
//     {
//       scene1_js_body= jsonEncode(
//           {
//             'lid': '$zoneid',
//             'sid': '3456',
//             'cmd': '234',
//             'data': '$sc_no',
//             'devicenumber': '255',
//             'echo':'1'
//           });
//
//     }
//     else if(address_type>=0 && address_type<=15){
//       scene1_js_body= jsonEncode(
//           {
//             'lid': '$address_type',
//             'sid': '3456',
//             'cmd': '234',
//             'data': '$sc_no',
//             'devicenumber': '255',
//             'echo':'1'
//           });
//
//     }
//     else {
//       scene1_js_body= jsonEncode(
//           {
//             'lid': '$zoneid',
//             'sid': '3456',
//             'cmd': '234',
//             'data': '$sc_no',
//             'devicenumber': '255',
//             'echo':'1'
//           });
//     }
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
// }
//
// Future<void> master_off_control() async {
//
//   var scene1_js_body;
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     scene1_js_body= jsonEncode(
//         {
//           'lid': '$zoneid',
//           'sid': '3456',
//           'cmd': '212',
//           'data': '0',
//           '$gatewayid1': '1',
//           '$gatewayid2': '1',
//           '$gatewayid3': '1',
//           '$gatewayid4': '1',
//           'echo':'1'
//         });
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1 = await Socket.connect(slaveip, port1);
//         socket1.write(scene1_js_body);
//         socket1.flush();
//         socket1.destroy();
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2 = await Socket.connect(slaveip2, port2);
//         socket2.write(scene1_js_body);
//         socket2.flush();
//         socket2.destroy();
//       }
//       catch(e)
//       {
//
//       }
//     }
//
//     //////////////////////////////////////////
//
//
//   }
//   catch(e)
//   {
//
//   }
//
//   // var scene1_js_body;
//   // try {
//   //   credentials();
//   //   if(zoneid==null)
//   //   {
//   //     final prefs = await SharedPreferences.getInstance();
//   //     zoneid = prefs.getInt('zoneid');
//   //   }
//   //   tcp_response_status1=0;
//   //   tcp_response_status2=0;
//   //   tcp_response_status3=0;
//   //   tcp_response_status4=0;
//   //   if(slaveip=='0'||slaveip==null)
//   //   {
//   //     tcp_response_status1=1;
//   //   }
//   //   if(slaveip2=='0'||slaveip2==null)
//   //   {
//   //     tcp_response_status2=1;
//   //   }
//   //   if(slaveip3=='0'||slaveip3==null)
//   //   {
//   //     tcp_response_status3=1;
//   //   }
//   //   if(slaveip4=='0'||slaveip4==null)
//   //   {
//   //     tcp_response_status4=1;
//   //   }
//   //   scene1_js_body= jsonEncode(
//   //       {
//   //         'lid': '$zoneid',
//   //         'sid': '3456',
//   //         'cmd': '212',
//   //         'data': '0',
//   //         '$gatewayid1': '1',
//   //         '$gatewayid2': '1',
//   //         '$gatewayid3': '1',
//   //         '$gatewayid4': '1',
//   //         'echo':'1'
//   //       });
//   //
//   //   if(socket1!=null)
//   //   {
//   //     try
//   //     {
//   //       socket1.write(scene1_js_body);
//   //     }
//   //     catch(e)
//   //     {
//   //
//   //     }
//   //   }
//   //   if(socket2!=null)
//   //   {
//   //     try
//   //     {
//   //       socket2.write(scene1_js_body);
//   //     }
//   //     catch(e)
//   //     {
//   //
//   //     }
//   //   }
//   //   if(socket3!=null)
//   //   {
//   //     try
//   //     {
//   //       socket3.write(scene1_js_body);
//   //     }
//   //     catch(e)
//   //     {
//   //
//   //     }
//   //   }
//   //   if(socket4!=null)
//   //   {
//   //     try
//   //     {
//   //       socket4.write(scene1_js_body);
//   //     }
//   //     catch(e)
//   //     {
//   //
//   //     }
//   //   }
//   //   //////////////////////////////////////////
//   //
//   //   try
//   //   {
//   //     if(slaveip!='0')
//   //     {
//   //       response_timer1.cancel();
//   //       response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//   //     }
//   //   }
//   //   catch(e)
//   //   {
//   //   }
//   //   try
//   //   {
//   //     if(slaveip2!='0')
//   //     {
//   //       response_timer2.cancel();
//   //       response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//   //     }
//   //   }
//   //   catch(e)
//   //   {
//   //   }
//   //   try
//   //   {
//   //     if(slaveip3!='0')
//   //     {
//   //       response_timer3.cancel();
//   //       response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//   //     }
//   //   }
//   //   catch(e)
//   //   {
//   //   }
//   //   try
//   //   {
//   //     if(slaveip4!='0')
//   //     {
//   //       response_timer4.cancel();
//   //       response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//   //     }
//   //   }
//   //   catch(e)
//   //   {
//   //   }
//   //
//   // }
//   // catch(e)
//   // {
//   //   tcp_response_status1=0;
//   //   tcp_response_status2=0;
//   //   tcp_response_status3=0;
//   //   tcp_response_status4=0;
//   //   if(slaveip=='0'||slaveip==null)
//   //   {
//   //     tcp_response_status1=1;
//   //   }
//   //   if(slaveip2=='0'||slaveip2==null)
//   //   {
//   //     tcp_response_status2=1;
//   //   }
//   //   if(slaveip3=='0'||slaveip3==null)
//   //   {
//   //     tcp_response_status3=1;
//   //   }
//   //   if(slaveip4=='0'||slaveip4==null)
//   //   {
//   //     tcp_response_status4=1;
//   //   }
//   //   tcp_status=0;
//   //   if(slaveip!='0')
//   //   {
//   //     tcp_response_handler1();
//   //   }
//   //   if(slaveip2!='0')
//   //   {
//   //     tcp_response_handler2();
//   //   }
//   //   if(slaveip3!='0')
//   //   {
//   //     tcp_response_handler3();
//   //   }
//   //   if(slaveip4!='0')
//   //   {
//   //     tcp_response_handler4();
//   //   }
//   // }
//
// }
//
//
// Future<void> master_on_control() async {
//
//   var scene1_js_body;
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     scene1_js_body= jsonEncode(
//           {
//             'lid': '$zoneid',
//             'sid': '3456',
//             'cmd': '208',
//             'data': '100',
//             '$gatewayid1': '1',
//             '$gatewayid2': '1',
//             '$gatewayid3': '1',
//             '$gatewayid4': '1',
//             'echo':'1'
//           });
//
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
//
// }
//
//
// Future<void> slider_control() async {
//
//   var scene1_js_body;
//   // var scene1_js_body2;
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     scene1_js_body= jsonEncode(
//         {
//           'lid': '$zoneid',
//           'sid': '3456',
//           'cmd': '201',
//           'data': '${light_slider_value.toInt()}',
//           '$gatewayid1': '1',
//           '$gatewayid2': '1',
//           '$gatewayid3': '1',
//           '$gatewayid4': '1',
//           'echo':'1'
//         });
//
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
//
// }
//
//
//
// Future<void> sensor_control() async {
//   // print('Client: scene 5');
//   var scene1_js_body;
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     scene1_js_body= jsonEncode(
//         {
//           'lid': '$zoneid',
//           'sid': '3456',
//           'cmd': '$sensor_cmd',
//           'data': '',
//           '$gatewayid1': '1',
//           '$gatewayid2': '0',
//           '$gatewayid3': '0',
//           '$gatewayid4': '0',
//           'echo':'1'
//         }
//     );
//
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
// }
//
//
// Future<void> curtain_close(int curt_no) async {
//   var curt_addr;
//   var scene1_js_body;
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//
//
//     //print(curt_no);
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//
//     switch(curt_no)
//     {
//       case 1:curt_addr=curtain1_add;
//       break;
//       case 2:curt_addr=curtain2_add;
//       break;
//       case 3:curt_addr=curtain3_add;
//       break;
//       case 4:curt_addr=curtain4_add;
//       break;
//       case 5:curt_addr=zoneid;
//       break;
//       default:break;
//     }
//     cmd=204;
//     scene1_js_body= jsonEncode(
//         {
//           'lid': '$curt_addr',
//           'sid': '3456',
//           'cmd': '$cmd',
//           'data': '',
//           '$gatewayid1': '1',
//           '$gatewayid2': '0',
//           '$gatewayid3': '0',
//           '$gatewayid4': '0',
//           'echo':'1'
//         }
//     );
//
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
// }
//
// Future<void> curtain_open(int curt_no) async {
//   var curt_addr;
//   var scene1_js_body;
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//
//
//
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     switch(curt_no)
//     {
//       case 1:curt_addr=curtain1_add;
//       break;
//       case 2:curt_addr=curtain2_add;
//       break;
//       case 3:curt_addr=curtain3_add;
//       break;
//       case 4:curt_addr=curtain4_add;
//       break;
//       case 5:curt_addr=zoneid;
//       break;
//       default:break;
//     }
//     cmd=203;
//  //   print("cur : $curt_addr");
//     scene1_js_body= jsonEncode(
//         {
//           'lid': '$curt_addr',
//           'sid': '3456',
//           'cmd': '$cmd',
//           'data': '',
//           '$gatewayid1': '1',
//           '$gatewayid2': '0',
//           '$gatewayid3': '0',
//           '$gatewayid4': '0',
//           'echo':'1'
//         }
//     );
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
//
// }
//
// Future<void> fan_control(int dat) async {
//   var scene1_js_body;
//
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//     cmd=100;
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     scene1_js_body= jsonEncode(
//         {
//           'lid': '$zoneid',
//           'sid': '3456',
//           'cmd': '$cmd',
//           'data': '$dat',
//           '$gatewayid1': '1',
//           '$gatewayid2': '0',
//           '$gatewayid3': '0',
//           '$gatewayid4': '0',
//           'echo':'1'
//         }
//     );
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
// }
//
// Future<void> goto_curtain(int level,int curt_no) async {
//   var curt_addr;
//   var scene1_js_body;
//
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     switch(curt_no)
//     {
//       case 1:curt_addr=curtain1_add;
//       break;
//       case 2:curt_addr=curtain2_add;
//       break;
//       case 3:curt_addr=curtain3_add;
//       break;
//       case 4:curt_addr=curtain4_add;
//       break;
//       case 5:curt_addr=zoneid;
//               break;
//       default:break;
//     }
//     cmd=202;
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     //print('c');
//     scene1_js_body= jsonEncode(
//         {
//           'lid': '$curt_addr',
//           'sid': '3456',
//           'cmd': '$cmd',
//           'data': '$level',
//           '$gatewayid1': '1',
//           '$gatewayid2': '0',
//           '$gatewayid3': '0',
//           '$gatewayid4': '0',
//           'echo':'1'
//         }
//     );
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
// }
//
// Future<void> gate_control() async {
//   var scene1_js_body;
//   try {
//     credentials();
//     if(zoneid==null)
//     {
//       final prefs = await SharedPreferences.getInstance();
//       zoneid = prefs.getInt('zoneid');
//     }
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     cmd=203;
//     scene1_js_body= jsonEncode(
//         {
//           'lid': '$gate_add',
//           'sid': '3456',
//           'cmd': '$cmd',
//           'data': '',
//           '$gatewayid1': '1',
//           '$gatewayid2': '1',
//           '$gatewayid3': '1',
//           '$gatewayid4': '1',
//           'echo':'1'
//         }
//     );
//
//
//
//     if(socket1!=null)
//     {
//       try
//       {
//         socket1.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket2!=null)
//     {
//       try
//       {
//         socket2.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket3!=null)
//     {
//       try
//       {
//         socket3.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     if(socket4!=null)
//     {
//       try
//       {
//         socket4.write(scene1_js_body);
//       }
//       catch(e)
//       {
//
//       }
//     }
//     //////////////////////////////////////////
//
//     try
//     {
//       if(slaveip!='0')
//       {
//         response_timer1.cancel();
//         response_timer1 = Timer(response_timeout_duration1, tcp_response_handler1);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip2!='0')
//       {
//         response_timer2.cancel();
//         response_timer2 = Timer(response_timeout_duration2, tcp_response_handler2);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip3!='0')
//       {
//         response_timer3.cancel();
//         response_timer3 = Timer(response_timeout_duration3, tcp_response_handler3);
//       }
//     }
//     catch(e)
//     {
//     }
//     try
//     {
//       if(slaveip4!='0')
//       {
//         response_timer4.cancel();
//         response_timer4 = Timer(response_timeout_duration4, tcp_response_handler4);
//       }
//     }
//     catch(e)
//     {
//     }
//
//   }
//   catch(e)
//   {
//     tcp_response_status1=0;
//     tcp_response_status2=0;
//     tcp_response_status3=0;
//     tcp_response_status4=0;
//     if(slaveip=='0'||slaveip==null)
//     {
//       tcp_response_status1=1;
//     }
//     if(slaveip2=='0'||slaveip2==null)
//     {
//       tcp_response_status2=1;
//     }
//     if(slaveip3=='0'||slaveip3==null)
//     {
//       tcp_response_status3=1;
//     }
//     if(slaveip4=='0'||slaveip4==null)
//     {
//       tcp_response_status4=1;
//     }
//     tcp_status=0;
//     if(slaveip!='0')
//     {
//       tcp_response_handler1();
//     }
//     if(slaveip2!='0')
//     {
//       tcp_response_handler2();
//     }
//     if(slaveip3!='0')
//     {
//       tcp_response_handler3();
//     }
//     if(slaveip4!='0')
//     {
//       tcp_response_handler4();
//     }
//   }
// }
//
// void update_ui()
// {
//   if((server_data==zoneid || server_data==address_type) && server_cmd==234)
//   {
//     // print("scene data verified");
//     master_on_border_color=Colors.transparent;
//     master_off_border_color=Colors.transparent;
//     slider_border_color=Colors.transparent;
//     //light_slider_value=100;
//     master_off_controller.add(1);
//     master_on_controller.add(1);
//     light_slider_controller.add(1);
//     scene_controller.add(1);
//
//     try{
//       master_off_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       master_on_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       light_slider_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       scene_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//   }
//   else  if(server_data==zoneid &&  server_cmd==208)
//   {
//     //latest_slider_response=server_zone_data;
//     master_on_border_color=Colors.white;
//     master_off_border_color=Colors.transparent;
//     slider_border_color=Colors.transparent;
//     light_slider_value=100;
//
//     master_off_controller.add(1);
//     master_on_controller.add(1);
//     light_slider_controller.add(1);
//     scene_controller.add(1);
//
//     try{
//       master_off_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       master_on_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       light_slider_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       scene_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//   }
//   else  if(server_data==zoneid &&  server_cmd==212)
//   {
//     // latest_slider_response=server_zone_data;
//     master_off_border_color=Colors.white;
//     master_on_border_color=Colors.transparent;
//     slider_border_color=Colors.transparent;
//     light_slider_value=0;
//
//     master_off_controller.add(1);
//     master_on_controller.add(1);
//     light_slider_controller.add(1);
//     scene_controller.add(1);
//
//     try{
//       master_off_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       master_on_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       light_slider_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       scene_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//   }
//   else  if(server_data==zoneid &&  server_cmd==201)
//   {
//    // light_slider_value=server_zone_data;
//     //latest_slider_response=server_zone_data;
//     slider_border_color=Colors.white;
//     master_on_border_color=Colors.transparent;
//     master_off_border_color=Colors.transparent;
//     master_off_controller.add(1);
//     master_on_controller.add(1);
//     light_slider_controller.add(1);
//     scene_controller.add(1);
//
//     try{
//       master_off_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       master_on_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       light_slider_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//     try{
//       scene_controller.stream.drain();
//     }
//     catch(e)
//     {
//     }
//   }
//   else if(server_data==zoneid && server_cmd==100)
//   {
//     //  print("fan data verified");
//     for(int i=0;i<7;i++)
//     {
//       fan_speed_button_color[i]= Color.fromRGBO(116, 140, 194,1).withOpacity(0.6);
//     }
//     if(server_zone_data>=0 && server_zone_data<10)
//     {
//       server_fan_speed=0;
//       fan_speed_button_color[6]= Color.fromRGBO(29, 45, 179, 1.0);
//       fan_icon_animation_duration=Duration(milliseconds: 0);
//     }
//     else if(server_zone_data>=10 && server_zone_data<20)
//     {
//       server_fan_speed=1;
//       fan_speed_button_color[0]= Color.fromRGBO(29, 45, 179, 1.0);
//       fan_icon_animation_duration=Duration(milliseconds: 750);
//     }
//     else if(server_zone_data>=20 && server_zone_data<30)
//     {
//       server_fan_speed=2;
//       fan_speed_button_color[1]= Color.fromRGBO(29, 45, 179, 1.0);
//       fan_icon_animation_duration=Duration(milliseconds: 1500);
//     }
//     else if(server_zone_data>=30 && server_zone_data<50)
//     {
//       server_fan_speed=3;
//       fan_speed_button_color[2]= Color.fromRGBO(29, 45, 179, 1.0);
//       fan_icon_animation_duration=Duration(milliseconds: 2500);
//     }
//     else if(server_zone_data>=50 && server_zone_data<60)
//     {
//       server_fan_speed=4;
//       fan_speed_button_color[3]= Color.fromRGBO(29, 45, 179, 1.0);
//       fan_icon_animation_duration=Duration(milliseconds: 3500);
//     }
//     else if(server_zone_data>=60 && server_zone_data<80)
//     {
//       server_fan_speed=5;
//       fan_speed_button_color[4]= Color.fromRGBO(29, 45, 179, 1.0);
//       fan_icon_animation_duration=Duration(milliseconds: 4000);
//     }
//     else if(server_zone_data>=80 && server_zone_data<=100)
//     {
//       server_fan_speed=6;
//       fan_speed_button_color[5]= Color.fromRGBO(29, 45, 179, 1.0);
//       fan_icon_animation_duration=Duration(seconds: 7);
//     }
//     fan_controller.add(1);
//   }
//   else if(server_data==zoneid && server_cmd==44)
//   {
//     sensor_color=Colors.yellow;
//     sensor_cmd=45;
//     sensor_controller.add(1);
//   }
//   else if(server_data==zoneid && server_cmd==45)
//   {
//     sensor_color=Colors.white;
//     sensor_cmd=44;
//     sensor_controller.add(1);
//   }
// }
//
//
//
//
//
//
//
//
//
