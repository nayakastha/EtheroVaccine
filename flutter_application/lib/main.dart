import 'package:flutter/material.dart';
import 'package:flutter_application/getstarted.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "EtheroVaccine",
        home: GetStrarted(),
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Color.fromRGBO(80, 194, 201, 1),
            accentColor: Color.fromRGBO(106, 224, 217, 1),
            fontFamily: 'OpenSans',
            textTheme: TextTheme(
                headline1: TextStyle(fontSize: 28),
                headline2: TextStyle(fontSize: 22),
                bodyText1: TextStyle(fontSize: 16),
                button: TextStyle(fontSize: 18, color: Colors.white))));
  }
}
