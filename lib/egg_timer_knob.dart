import 'package:flutter/material.dart';

final Color GRADIENT_TOP = const Color(0xFFF5F5F5);
final Color GRADIENT_BOTTOM = const Color(0xFFE8E8E8);

class EggTimerKnob extends StatefulWidget {
  @override
  _EggTimerKnobState createState() => new _EggTimerKnobState();
}

class _EggTimerKnobState extends State<EggTimerKnob> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: [
        new Container(
          child: new CustomPaint(
            painter: new ArrowPainter(),
          ),
          width: double.infinity,
          height: double.infinity,
        ),
        new Container(
          padding: const EdgeInsets.all(10.0),
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
          child: new Container(
            decoration: new BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: new Border.all(
                  color: const Color(0xFFDFDFDF),
                  width: 1.5,
                )),
            child: new Center(
              child: new Icon(
                Icons.title,
                size: 50.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ArrowPainter extends CustomPainter {
  final Paint dialArrowPainter;

  ArrowPainter() : dialArrowPainter = new Paint() {
    dialArrowPainter.color = Colors.black;
    dialArrowPainter.style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();

    canvas.translate(size.width / 2, 0.0);

    Path path = new Path();
    path.moveTo(0.0, -5.0);
    path.lineTo(10.0, 10.0);
    path.lineTo(-10.0, 10.0);
    path.close();

    canvas.drawPath(path, dialArrowPainter);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
  }
}
