import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:timer_builder/timer_builder.dart';
import 'configip.dart';
import 'date.dart';

int wifi;
var wifi_icon;
var wifi_color;

void wifi_connection() async {
  // print("repeat");
  // if(Platform.isAndroid) {
  //   WiFiForIoTPlugin.forceWifiUsage(true);
  // }
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.wifi) {
    wifi = 1;
  } else if (connectivityResult != ConnectivityResult.wifi) {
    wifi = 0;
  }
  if (wifi == 1) {
    wifi_icon = Icons.wifi;
    wifi_color = Colors.green.withOpacity(0.6);
  } else if (wifi == 0) {
    wifi_icon = Icons.wifi_off;
    wifi_color = Colors.white;
  }
}

// class Wifi extends StatefulWidget {
//   @override
//   _WifiState createState() => _WifiState();
// }
// class _WifiState extends State<Wifi> {
//
//   Timer timer;
//
//   @override
//   void initState() {
//     super.initState();
//     new Timer.periodic(Duration(seconds: 2), (Timer t) => setState((){
//       wifi_connection();
//     }));
//
//   }
//
//   @override
//   void update_wifi() {
//
//     new Timer.periodic(Duration(seconds: 2), (Timer t) => setState((){
//       wifi_connection();
//     }));
//       if(wifi==1)
//       {
//         wifi_icon=Icons.wifi;
//         wifi_color=Colors.green;
//       }
//       else if(wifi==0)
//       {
//         wifi_icon=Icons.wifi_off;
//         wifi_color=Colors.white;
//       }
//
//     //wifi_connection();
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     //endTime=56;
//     update_wifi();
//     return SizedBox(height: 0,);
//   }
// }
//_SpinnerState spin =_SpinnerState();

/////////////////////////////////////

var wifi_count;

class Wifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Config()),
        );
      },
      child: TimerBuilder.periodic(Duration(seconds: 1), builder: (context) {
        wifi_connection();
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.white,
              child: Icon(
                wifi_icon,
                color: wifi_color,
              ),
              height: 10,
              padding: EdgeInsets.only(top: 5, bottom: 0, left: 5, right: 0),
            ),
            DateWidget(),
          ],
        );
      }),
    );
  }
}
