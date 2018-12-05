import 'package:egg_timer/egg_timer_button.dart';
import 'package:flutter/material.dart';

class EggTimerControllers extends StatefulWidget {
  @override
  _EggTimerControllersState createState() => new _EggTimerControllersState();
}

class _EggTimerControllersState extends State<EggTimerControllers> {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Row(
          children: [
            new EggTimerButton(
              icon: Icons.refresh,
              text: "RESTART",
            ),
            new Expanded(child: new Container()),
            new EggTimerButton(
              icon: Icons.arrow_back,
              text: "REST",
            ),
          ],
        ),
        new EggTimerButton(
          icon: Icons.pause,
          text: "Pause",
        ),
      ],
    );
  }
}
