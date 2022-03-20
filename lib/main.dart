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
          color: (count % 5 == 0)
              ? Colors.black
              : (count % 5 == 1)
                  ? Colors.purple
                  : (count % 5 == 2)
                      ? Colors.red
                      : (count % 5 == 3)
                          ? Colors.blue
                          : Colors.green,
          height: 140,
          width: 500,
        ),
        Container(
          color: (count % 5 == 1)
              ? Colors.black
              : (count % 5 == 2)
                  ? Colors.purple
                  : (count % 5 == 3)
                      ? Colors.red
                      : (count % 5 == 4)
                          ? Colors.blue
                          : Colors.green,
          height: 140,
          width: 500,
        ),
        Container(
          color: (count % 5 == 2)
              ? Colors.black
              : (count % 5 == 3)
                  ? Colors.purple
                  : (count % 5 == 4)
                      ? Colors.red
                      : (count % 5 == 0)
                          ? Colors.blue
                          : Colors.green,
          height: 140,
          width: 500,
        ),
        Container(
          color: (count % 5 == 3)
              ? Colors.black
              : (count % 5 == 4)
                  ? Colors.purple
                  : (count % 5 == 0)
                      ? Colors.red
                      : (count % 5 == 1)
                          ? Colors.blue
                          : Colors.green,
          height: 140,
          width: 500,
        ),
        Container(
          color: (count % 5 == 4)
              ? Colors.black
              : (count % 5 == 0)
                  ? Colors.purple
                  : (count % 5 == 1)
                      ? Colors.red
                      : (count % 5 == 2)
                          ? Colors.blue
                          : Colors.green,
          height: 140,
          width: 500,
        ),
      ]),
    );
  }
}
