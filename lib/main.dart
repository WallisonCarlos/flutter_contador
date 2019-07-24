import 'package:flutter/material.dart';

void main() {
   runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _info = "Pode entrar!";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
      if (_people < 0) {
        _info = "Mundo invertido!";
      } else if (_people >= 10) {
        _info = "Está cheio!";
      } else {
        _info = "Pode entrar!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/bg.png",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas $_people",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      onPressed: () {
                        _changePeople(1);
                      },
                      child: Text(
                          "+1",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 40.0)
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                      onPressed: () {
                        _changePeople(-1);
                      },
                      child: Text(
                          "-1",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 40.0)
                      )
                  ),
                ),
              ],
            ),
            Text(
              _info,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0
              ),
            )
          ],

        ),
      ],
    );
  }
}
