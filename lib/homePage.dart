import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'manualPage.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'http_client.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  print("building scene");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                print("Entering manual mode");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManualPage()),
                );
              },
              child: Text("Manual mode")),
          ElevatedButton(
              onPressed: () {
                print("Entering auto mode");
              },
              child: Text("Auto mode")),
          ElevatedButton(
              onPressed: () {
                print("Entering scan mode");
              },
              child: Text("Scan")),
        ],
      ),
    );
  }
}
