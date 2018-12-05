import 'package:flutter/material.dart';

class EggTimerTimeDisplay extends StatefulWidget {
  @override
  _EggTimerTimeDisplayState createState() => new _EggTimerTimeDisplayState();
}

class _EggTimerTimeDisplayState extends State<EggTimerTimeDisplay> {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: new Text(
        '15:23',
        textAlign: TextAlign.center,
        style: new TextStyle(
          fontFamily: 'BebasNeue',
          fontWeight: FontWeight.bold,
          fontSize: 150.0,
          letterSpacing: 10.0,
        ),
      ),
    );
  }
}
