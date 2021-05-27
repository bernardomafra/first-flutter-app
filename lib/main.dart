import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(title: 'Contador de pessoas', home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Pode entrar";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;

      _infoText = _people > 0 ? "Positivo" : "Negativo";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("images/splash.jpg", fit: BoxFit.cover, height: 1000),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Pessoas: $_people",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    _changePeople(1);
                  },
                  child: Text(
                    "+1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    _changePeople(-1);
                  },
                  child: Text(
                    "-1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              )
            ],
          ),
          Text("$_infoText",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0)),
        ])
      ],
    );
  }
}
