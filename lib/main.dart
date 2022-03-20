import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var count = 0;
  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {
      setState(() {
        count++;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          color: (count % 2 == 0) ? Colors.black : Colors.white,
          height: 368,
          width: 500,
        ),
        Container(
          color: (count % 2 == 1) ? Colors.black : Colors.white,
          height: 368,
          width: 500,
        ),
      ]),
    );
  }
}
