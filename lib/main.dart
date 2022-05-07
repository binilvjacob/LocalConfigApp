import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './configip.dart';
import 'package:flutter/services.dart';
import './page_1.dart';
import 'page_2.dart';
import 'page_3.dart';
import 'page_4.dart';
import 'page_5.dart';
import 'page_6.dart';
import 'page_7.dart';
import 'page_8.dart';

int currentPage = 0;

class Lights {
  double lightSliderVal;
  Color masterOnBorderColor;
  Color masterOffBorderColor;
  Color sliderBorderColor;
  ValueNotifier<bool> masterOnController;
  ValueNotifier<bool> masterOffController;
  ValueNotifier<bool> lightSliderController;

  Lights(
      this.lightSliderVal,
      this.masterOnBorderColor,
      this.masterOffBorderColor,
      this.sliderBorderColor,
      this.masterOnController,
      this.masterOffController,
      this.lightSliderController);
}

class Fans {
  ValueNotifier<bool> fanController;
  List<Color> fanSpeedButtonColor = [
    Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
    Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
    Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
    Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
    Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
    Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
    Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6)
  ];
  Duration fanIconAnimationDuration;

  Fans(this.fanController, this.fanSpeedButtonColor,
      this.fanIconAnimationDuration);
}

class Scenes {
  ValueNotifier<bool> sceneController;
  List<Color> sceneBorderColor = [];
  List<String> sceneImages = [];

  Scenes(this.sceneController, this.sceneImages, this.sceneBorderColor);
}

/// Change PAGE
Lights l1 = Lights(
    0,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false));
Lights l2 = Lights(
    0,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false));
Lights l3 = Lights(
    0,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false));
Lights l4 = Lights(
    0,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false));
Lights l5 = Lights(
    0,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false));
Lights l6 = Lights(
    0,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false));
Lights l7 = Lights(
    0,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false));
Lights l8 = Lights(
    0,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false),
    ValueNotifier<bool>(false));

/// Change PAGE
Scenes s1 = Scenes(ValueNotifier<bool>(false), [
  'assets\\scene1.png',
  'assets\\scene2.png',
  'assets\\scene3.png',
  'assets\\scene4.png',
  'assets\\scene5.png',
  'assets\\scene6.png',
  'assets\\scene7.png',
  'assets\\scene8.png',
  'assets\\scene9.png',
  'assets\\scene10.png',
], [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
]);

Scenes s2 = Scenes(ValueNotifier<bool>(false), [
  'assets\\scene1.png',
  'assets\\scene2.png',
  'assets\\scene3.png',
  'assets\\scene4.png',
  'assets\\scene5.png',
  'assets\\scene6.png',
  'assets\\scene7.png',
  'assets\\scene8.png',
  'assets\\scene9.png',
  'assets\\scene10.png',
], [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
]);

Scenes s3 = Scenes(ValueNotifier<bool>(false), [
  'assets\\scene1.png',
  'assets\\scene2.png',
  'assets\\scene3.png',
  'assets\\scene4.png',
  'assets\\scene5.png',
  'assets\\scene6.png',
  'assets\\scene7.png',
  'assets\\scene8.png',
  'assets\\scene9.png',
  'assets\\scene10.png',
], [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
]);

Scenes s4 = Scenes(ValueNotifier<bool>(false), [
  'assets\\scene1.png',
  'assets\\scene2.png',
  'assets\\scene3.png',
  'assets\\scene4.png',
  'assets\\scene5.png',
  'assets\\scene6.png',
  'assets\\scene7.png',
  'assets\\scene8.png',
  'assets\\scene9.png',
  'assets\\scene10.png',
], [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
]);

Scenes s5 = Scenes(ValueNotifier<bool>(false), [
  'assets\\scene1.png',
  'assets\\scene2.png',
  'assets\\scene3.png',
  'assets\\scene4.png',
  'assets\\scene5.png',
  'assets\\scene6.png',
  'assets\\scene7.png',
  'assets\\scene8.png',
  'assets\\scene9.png',
  'assets\\scene10.png',
], [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
]);
Scenes s6 = Scenes(ValueNotifier<bool>(false), [
  'assets\\scene1.png',
  'assets\\scene2.png',
  'assets\\scene3.png',
  'assets\\scene4.png',
  'assets\\scene5.png',
  'assets\\scene6.png',
  'assets\\scene7.png',
  'assets\\scene8.png',
  'assets\\scene9.png',
  'assets\\scene10.png',
], [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
]);
Scenes s7 = Scenes(ValueNotifier<bool>(false), [
  'assets\\scene1.png',
  'assets\\scene2.png',
  'assets\\scene3.png',
  'assets\\scene4.png',
  'assets\\scene5.png',
  'assets\\scene6.png',
  'assets\\scene7.png',
  'assets\\scene8.png',
  'assets\\scene9.png',
  'assets\\scene10.png',
], [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
]);
Scenes s8 = Scenes(ValueNotifier<bool>(false), [
  'assets\\scene1.png',
  'assets\\scene2.png',
  'assets\\scene3.png',
  'assets\\scene4.png',
  'assets\\scene5.png',
  'assets\\scene6.png',
  'assets\\scene7.png',
  'assets\\scene8.png',
  'assets\\scene9.png',
  'assets\\scene10.png',
], [
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
  Colors.transparent,
]);

/// Change PAGE
Fans f2 = Fans(
    ValueNotifier<bool>(false),
    [
      Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
      Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
      Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
      Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
      Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
      Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6),
      Color.fromRGBO(116, 140, 194, 1).withOpacity(0.6)
    ],
    Duration(microseconds: 1));

String timeData = "";
String secondsData = "";
int pageNo = 1;

ValueNotifier<bool> darkScreenUpdater = ValueNotifier<bool>(false);

//StreamController<int> scene_controller = StreamController<int>.broadcast();
//StreamController<int> scene_controller_p2 = StreamController<int>.broadcast();

final snackBar = SnackBar(
  content: Text(
    'Server disconnected',
    style: TextStyle(
        // fontFamily: 'FredokaOne',
        fontSize: 20),
  ),
//padding: EdgeInsets.only(left: 300),
//margin: EdgeInsets.only(left: 60),
  //width: 50,
  // elevation: 3,
  duration: Duration(milliseconds: 1000),
  backgroundColor: Colors.redAccent,
);

int z1 = 0, z2 = 0, z3 = 0, z4 = 0, z5 = 0, z6 = 0, z7 = 0, z8 = 0;

// RestartableTimer timer1 ;
// RestartableTimer timer2 ;

Credentials cred = Credentials(
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
    "0");

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  credentials();

  // if(Platform.isAndroid) {
  //   WiFiForIoTPlugin.forceWifiUsage(true);
  // }
  ////////////////////////////////////////////

  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
  ]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

//final Permission _permissionGroup = Permission.storage;
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // requestPermission(_permissionGroup);
    credentials();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    //  WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setEnabledSystemUIOverlays([]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => PageTwo(),
        '/svr': (context) => SecondRoute(),
      },
      // home:Scaffold(
      //   //resizeToAvoidBottomPadding: false,
      //   body:
      //   PageView(
      //       children:[
      //         PageOne(),
      //         PageTwo(),
      //       ]
      //   ),
      //   // backgroundColor: Color.fromRGBO(30,9,24,1),
      // ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  void initState() {
    // TODO: implement initState
    pageNo = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print("buildng ligero page");
    pageNo = 1;
    return GestureDetector(
      onTap: () {
        // switch(currentPage)
        // {
        //   case 0:
        //     try {
        //       timer1.reset();
        //     }
        //     catch(e)
        //     {
        //       print(e);
        //     }
        //     break;
        //   case 1:
        //     try
        //     {
        //       timer2.reset();
        //     }
        //     catch(e)
        //     {
        //       print(e);
        //     }
        //     break;
        //   default:break;
        // }

        pageNo = 0;
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => PageOne()),
        // );
        Navigator.pop(context);
      },

      // child: Scaffold(
      //   // appBar: AppBar(
      //   //   title: Text("Ligero"),
      //   // ),
      //   backgroundColor: Colors.black54,
      //   body: Center(
      //     child: Text('LIGERO',
      //         style:TextStyle(
      //             color:Colors.grey.withOpacity(0.5),
      //             fontFamily: "FredokaOne",
      //             fontSize: 150
      //         )
      //     ),
      //
      //   ),
      // ),

      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //color: Colors.black,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets\\scrnsvr_buddha.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ValueListenableBuilder<bool>(
              valueListenable: darkScreenUpdater,
              builder: (BuildContext, value, child) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.60),
                    Padding(
                      padding: const EdgeInsets.only(left: 950),
                      child: Text(timeData,
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontFamily: "FredokaOne",
                              fontSize: 100)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1050),
                      child: Text(secondsData,
                          style: TextStyle(
                              color: Colors.blue.withOpacity(0.7),
                              fontFamily: "FredokaOne",
                              fontSize: 75)),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //activePage=1;

    return Scaffold(
      body: PageView(
          onPageChanged: (value) {
            currentPage = value;
          },
          children: [
            PageOne(),
            PageTwo(),
            PageThree(),
            PageFour(),
            PageFive(),
            PageSix(),
            PageSeven(),
            PageEight(),
          ]),
    );
  }
}
