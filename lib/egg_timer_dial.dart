import 'package:egg_timer/egg_timer_knob.dart';
import 'package:flutter/material.dart';

final Color GRADIENT_TOP = const Color(0xFFF5F5F5);
final Color GRADIENT_BOTTOM = const Color(0xFFE8E8E8);

class EggTimerDial extends StatefulWidget {
  @override
  _EggTimerDialState createState() => new _EggTimerDialState();
}

class _EggTimerDialState extends State<EggTimerDial> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 45.0, right: 45.0),
        child: new AspectRatio(
          aspectRatio: 1.0,
          child: new Container(
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                gradient: new LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [GRADIENT_TOP, GRADIENT_BOTTOM],
                ),
                boxShadow: [
                  new BoxShadow(
                    color: const Color(0x44000000),
                    offset: new Offset(
                      0.0,
                      1.0,
                    ),
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                  )
                ]),
            child: new Padding(
              padding: const EdgeInsets.all(65.0),
              child: new EggTimerKnob(),
            ),
          ),
        ),
      ),
    );
  }
}
