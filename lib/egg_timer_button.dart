import 'package:flutter/material.dart';

class EggTimerButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const EggTimerButton({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new FlatButton(
        splashColor: const Color(0x22000000),
        onPressed: () {},
        child: new Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 25.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.only(right: 3.0),
                child: new Icon(
                  icon,
                  color: Colors.black,
                ),
              ),
              new Text(
                text,
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3.0,
                ),
              )
            ],
          ),
        ));
  }
}
