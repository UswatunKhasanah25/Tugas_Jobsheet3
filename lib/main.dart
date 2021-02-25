import 'package:flutter/material.dart';

import 'widgets/input.dart';
import 'widgets/result.dart';
import 'widgets/convert.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  double _kelvin = 0;
  double _reamur = 0;

  final celciusController = TextEditingController();
  
  void _konversiSuhu() {
    setState(() {
      final _inputUser = double.parse(celciusController.value.text);
      _kelvin = _inputUser + 273;
      _reamur = (4 / 5) * _inputUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold (
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Input(celciusController: celciusController),
                Result(kelvin: _kelvin, reamur: _reamur),
                Convert(konvertHandler: _konversiSuhu),
              ]
            ),
        ),
      ),
    );
  }
}





