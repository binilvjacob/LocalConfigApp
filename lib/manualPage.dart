import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'backend.dart';
import 'main.dart';

BuildContext cont;

String dropdownValue = '1';
String dropdownValue2 = 'ON';
String dropdownValue3 = '1';
TextEditingController ipController = TextEditingController();
TextEditingController idController = TextEditingController();

String ipAddress = "";
String gatewayId = "";
String deviceAction = "";
String deviceCmd = "";
String deviceAddress = "";
String deviceData = "";

void credentials() async {
  print("reading cred");
  final prefs = await SharedPreferences.getInstance();
  ipAddress = prefs.getString('gatewayIp');
  gatewayId = prefs.getString('gatewayId');
  print(ipAddress);
}

class ManualPage extends StatefulWidget {
  @override
  _ManualPageState createState() => _ManualPageState();
}

class _ManualPageState extends State<ManualPage> {
  @override
  void initState() {
    ipController.text = ipAddress;
    idController.text = gatewayId;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    cont = context;
    pageNo = 0;
    credentials();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manual control',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 70),
              child: TextFormField(
                controller: ipController,
                style: TextStyle(color: Colors.red),
                //   initialValue: "192.168.1.154",
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Gateway IP Address',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 30),
              child: TextFormField(
                controller: idController,
                style: TextStyle(color: Colors.red),
                // initialValue: "002",
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Gateway ID',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 50),
              child: Text(
                "Action",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 5),
              child: DropdownButton<String>(
                value: dropdownValue2,
                icon: const Icon(Icons.arrow_circle_down_rounded),
                elevation: 16,
                style: const TextStyle(color: Colors.green),
                underline: Container(
                  height: 2,
                  color: Colors.green,
                ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue2 = newValue;
                  });
                },
                items: <String>[
                  "ON", // 208
                  "OFF", // 212
                  "GotoLevel", // 201
                  "Select Scene", // 234
                  "Dim by 1 level", // 216
                  "Bright by 1 level", // 220
                  "Store scene", // 231
                  "Add/Remove from group", // 9
                  "Set individual address", // 34
                  "Query current level", // 39
                  "Set ZoneID", // 49
                  "Set Maximum level", // 42
                  "Set Minimum level", // 43
                  "Set Faderate", // 47
                  "Read Code version", // 52
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 40),
              child: Text(
                "Device address",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 5),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_circle_down_rounded),
                elevation: 16,
                style: const TextStyle(color: Colors.green),
                // underline: Container(
                //   height: 2,
                //   color: Colors.deepPurpleAccent,
                // ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: <String>[
                  '1',
                  '2',
                  '3',
                  '4',
                  '5',
                  '6',
                  '7',
                  '8',
                  '9',
                  '10',
                  '11',
                  '12',
                  '13',
                  '14',
                  '15',
                  '16',
                  '17',
                  '18',
                  '19',
                  '20',
                  '21',
                  '22',
                  '23',
                  '24',
                  '25',
                  '26',
                  '27',
                  '28',
                  '29',
                  '30',
                  '31',
                  '32',
                  '33',
                  '34',
                  '35',
                  '36',
                  '37',
                  '38',
                  '39',
                  '40',
                  '41',
                  '42',
                  '43',
                  '44',
                  '45',
                  '46',
                  '47',
                  '48',
                  '49',
                  '50',
                  '51',
                  '52',
                  '53',
                  '54',
                  '55',
                  '56',
                  '57',
                  '58',
                  '59',
                  '60',
                  '61',
                  '62',
                  '63',
                  '64',
                  '65',
                  '66',
                  '67',
                  '68',
                  '69',
                  '70',
                  '71',
                  '72',
                  '73',
                  '74',
                  '75',
                  '76',
                  '77',
                  '78',
                  '79',
                  '80',
                  '81',
                  '82',
                  '83',
                  '84',
                  '85',
                  '86',
                  '87',
                  '88',
                  '89',
                  '90',
                  '91',
                  '92',
                  '93',
                  '94',
                  '95',
                  '96',
                  '97',
                  '98',
                  '99',
                  '100',
                  '101',
                  '102',
                  '103',
                  '104',
                  '105',
                  '106',
                  '107',
                  '108',
                  '109',
                  '110',
                  '111',
                  '112',
                  '113',
                  '114',
                  '115',
                  '116',
                  '117',
                  '118',
                  '119',
                  '120',
                  '121',
                  '122',
                  '123',
                  '124',
                  '125',
                  '126',
                  '127',
                  '128',
                  '129',
                  '130',
                  '131',
                  '132',
                  '133',
                  '134',
                  '135',
                  '136',
                  '137',
                  '138',
                  '139',
                  '140',
                  '141',
                  '142',
                  '143',
                  '144',
                  '145',
                  '146',
                  '147',
                  '148',
                  '149',
                  '150',
                  '151',
                  '152',
                  '153',
                  '154',
                  '155',
                  '156',
                  '157',
                  '158',
                  '159',
                  '160',
                  '161',
                  '162',
                  '163',
                  '164',
                  '165',
                  '166',
                  '167',
                  '168',
                  '169',
                  '170',
                  '171',
                  '172',
                  '173',
                  '174',
                  '175',
                  '176',
                  '177',
                  '178',
                  '179',
                  '180',
                  '181',
                  '182',
                  '183',
                  '184',
                  '185',
                  '186',
                  '187',
                  '188',
                  '189',
                  '190',
                  '191',
                  '192',
                  '193',
                  '194',
                  '195',
                  '196',
                  '197',
                  '198',
                  '199',
                  '200',
                  '201',
                  '202',
                  '203',
                  '204',
                  '205',
                  '206',
                  '207',
                  '208',
                  '209',
                  '210',
                  '211',
                  '212',
                  '213',
                  '214',
                  '215',
                  '216',
                  '217',
                  '218',
                  '219',
                  '220',
                  '221',
                  '222',
                  '223',
                  '224',
                  '225',
                  '226',
                  '227',
                  '228',
                  '229',
                  '230',
                  '231',
                  '232',
                  '233',
                  '234',
                  '235',
                  '236',
                  '237',
                  '238',
                  '239',
                  '240',
                  '241',
                  '242',
                  '243',
                  '244',
                  '245',
                  '246',
                  '247',
                  '248',
                  '249',
                  '250',
                  '251',
                  '252',
                  '253',
                  '254',
                  '255',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 40),
              child: Text(
                "Data",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0, right: 70, top: 5),
              child: DropdownButton<String>(
                value: dropdownValue3,
                icon: const Icon(Icons.arrow_circle_down_rounded),
                elevation: 16,
                style: const TextStyle(color: Colors.green),
                // underline: Container(
                //   height: 2,
                //   color: Colors.deepPurpleAccent,
                // ),
                onChanged: (String newValue) {
                  setState(() {
                    dropdownValue3 = newValue;
                  });
                },
                items: <String>[
                  '1',
                  '2',
                  '3',
                  '4',
                  '5',
                  '6',
                  '7',
                  '8',
                  '9',
                  '10',
                  '11',
                  '12',
                  '13',
                  '14',
                  '15',
                  '16',
                  '17',
                  '18',
                  '19',
                  '20',
                  '21',
                  '22',
                  '23',
                  '24',
                  '25',
                  '26',
                  '27',
                  '28',
                  '29',
                  '30',
                  '31',
                  '32',
                  '33',
                  '34',
                  '35',
                  '36',
                  '37',
                  '38',
                  '39',
                  '40',
                  '41',
                  '42',
                  '43',
                  '44',
                  '45',
                  '46',
                  '47',
                  '48',
                  '49',
                  '50',
                  '51',
                  '52',
                  '53',
                  '54',
                  '55',
                  '56',
                  '57',
                  '58',
                  '59',
                  '60',
                  '61',
                  '62',
                  '63',
                  '64',
                  '65',
                  '66',
                  '67',
                  '68',
                  '69',
                  '70',
                  '71',
                  '72',
                  '73',
                  '74',
                  '75',
                  '76',
                  '77',
                  '78',
                  '79',
                  '80',
                  '81',
                  '82',
                  '83',
                  '84',
                  '85',
                  '86',
                  '87',
                  '88',
                  '89',
                  '90',
                  '91',
                  '92',
                  '93',
                  '94',
                  '95',
                  '96',
                  '97',
                  '98',
                  '99',
                  '100',
                  '101',
                  '102',
                  '103',
                  '104',
                  '105',
                  '106',
                  '107',
                  '108',
                  '109',
                  '110',
                  '111',
                  '112',
                  '113',
                  '114',
                  '115',
                  '116',
                  '117',
                  '118',
                  '119',
                  '120',
                  '121',
                  '122',
                  '123',
                  '124',
                  '125',
                  '126',
                  '127',
                  '128',
                  '129',
                  '130',
                  '131',
                  '132',
                  '133',
                  '134',
                  '135',
                  '136',
                  '137',
                  '138',
                  '139',
                  '140',
                  '141',
                  '142',
                  '143',
                  '144',
                  '145',
                  '146',
                  '147',
                  '148',
                  '149',
                  '150',
                  '151',
                  '152',
                  '153',
                  '154',
                  '155',
                  '156',
                  '157',
                  '158',
                  '159',
                  '160',
                  '161',
                  '162',
                  '163',
                  '164',
                  '165',
                  '166',
                  '167',
                  '168',
                  '169',
                  '170',
                  '171',
                  '172',
                  '173',
                  '174',
                  '175',
                  '176',
                  '177',
                  '178',
                  '179',
                  '180',
                  '181',
                  '182',
                  '183',
                  '184',
                  '185',
                  '186',
                  '187',
                  '188',
                  '189',
                  '190',
                  '191',
                  '192',
                  '193',
                  '194',
                  '195',
                  '196',
                  '197',
                  '198',
                  '199',
                  '200',
                  '201',
                  '202',
                  '203',
                  '204',
                  '205',
                  '206',
                  '207',
                  '208',
                  '209',
                  '210',
                  '211',
                  '212',
                  '213',
                  '214',
                  '215',
                  '216',
                  '217',
                  '218',
                  '219',
                  '220',
                  '221',
                  '222',
                  '223',
                  '224',
                  '225',
                  '226',
                  '227',
                  '228',
                  '229',
                  '230',
                  '231',
                  '232',
                  '233',
                  '234',
                  '235',
                  '236',
                  '237',
                  '238',
                  '239',
                  '240',
                  '241',
                  '242',
                  '243',
                  '244',
                  '245',
                  '246',
                  '247',
                  '248',
                  '249',
                  '250',
                  '251',
                  '252',
                  '253',
                  '254',
                  '255',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 50, bottom: 30),
                    child: ElevatedButton(
                        onPressed: () async {
                          ipAddress = ipController.text;
                          gatewayId = idController.text;
                          deviceAction = dropdownValue2;
                          deviceAddress = dropdownValue;
                          deviceData = dropdownValue3;
                          try {
                            final prefs = await SharedPreferences
                                .getInstance(); // set value
                            print(ipAddress);
                            prefs.setString('gatewayIp', ipAddress);
                            prefs.setString('gatewayId', gatewayId);
                          } catch (e) {}
                          deviceCmd = "208";
                          manualControl(ipAddress, gatewayId, deviceCmd,
                              deviceAddress, deviceData);
                        },
                        child: Text("On")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 50, bottom: 30),
                    child: ElevatedButton(
                        onPressed: () async {
                          ipAddress = ipController.text;
                          gatewayId = idController.text;
                          deviceAction = dropdownValue2;
                          deviceAddress = dropdownValue;
                          deviceData = dropdownValue3;
                          try {
                            final prefs = await SharedPreferences
                                .getInstance(); // set value
                            print(ipAddress);
                            prefs.setString('gatewayIp', ipAddress);
                            prefs.setString('gatewayId', gatewayId);
                          } catch (e) {}
                          deviceCmd = "212";
                          manualControl(ipAddress, gatewayId, deviceCmd,
                              deviceAddress, deviceData);
                        },
                        child: Text("Off")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 50, bottom: 30),
                    child: ElevatedButton(
                        onPressed: () async {
                          ipAddress = ipController.text;
                          gatewayId = idController.text;
                          deviceAction = dropdownValue2;
                          deviceAddress = dropdownValue;
                          deviceData = dropdownValue3;
                          try {
                            final prefs = await SharedPreferences
                                .getInstance(); // set value
                            print(ipAddress);
                            prefs.setString('gatewayIp', ipAddress);
                            prefs.setString('gatewayId', gatewayId);
                          } catch (e) {}
                          deviceCmd = "201";
                          manualControl(ipAddress, gatewayId, deviceCmd,
                              deviceAddress, deviceData);
                        },
                        child: Text("GoTo Level")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 50, bottom: 30),
                    child: ElevatedButton(
                        onPressed: () async {
                          ipAddress = ipController.text;
                          gatewayId = idController.text;
                          deviceAction = dropdownValue2;
                          deviceAddress = dropdownValue;
                          deviceData = dropdownValue3;
                          try {
                            final prefs = await SharedPreferences
                                .getInstance(); // set value
                            print(ipAddress);
                            prefs.setString('gatewayIp', ipAddress);
                            prefs.setString('gatewayId', gatewayId);
                          } catch (e) {}
                          deviceCmd = "234";
                          manualControl(ipAddress, gatewayId, deviceCmd,
                              deviceAddress, deviceData);
                        },
                        child: Text("Scene Call")),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 150, right: 8, top: 50, bottom: 30),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                  onPressed: () async {
                    ipAddress = ipController.text;
                    gatewayId = idController.text;
                    deviceAction = dropdownValue2;
                    deviceAddress = dropdownValue;
                    deviceData = dropdownValue3;
                    try {
                      final prefs =
                          await SharedPreferences.getInstance(); // set value
                      print(ipAddress);
                      prefs.setString('gatewayIp', ipAddress);
                      prefs.setString('gatewayId', gatewayId);
                    } catch (e) {}
                    if (deviceAction == "ON") {
                      deviceCmd = "208";
                    } else if (deviceAction == "OFF") {
                      deviceCmd = "212";
                    } else if (deviceAction == "GotoLevel") {
                      deviceCmd = "201";
                    } else if (deviceAction == "Select Scene") {
                      deviceCmd = "234";
                    } else if (deviceAction == "Dim by 1 level") {
                      deviceCmd = "241";
                    } else if (deviceAction == "Bright by 1 level") {
                      deviceCmd = "240";
                    } else if (deviceAction == "Store scene") {
                      deviceCmd = "231";
                    } else if (deviceAction == "Add/Remove from group") {
                      deviceCmd = "9";
                    } else if (deviceAction == "Set individual address") {
                      deviceCmd = "34";
                    } else if (deviceAction == "Query current level") {
                      deviceCmd = "39";
                    } else if (deviceAction == "Set ZoneID") {
                      deviceCmd = "49";
                    } else if (deviceAction == "Set Maximum level") {
                      deviceCmd = "42";
                    } else if (deviceAction == "Set Minimum level") {
                      deviceCmd = "43";
                    } else if (deviceAction == "Set Faderate") {
                      deviceCmd = "47";
                    } else if (deviceAction == "Read Code version") {
                      deviceCmd = "52";
                    }

                    manualControl(ipAddress, gatewayId, deviceCmd,
                        deviceAddress, deviceData);
                  },
                  child: Text("SEND")),
            )
          ],
        ),
      ),
    );
  }
}
