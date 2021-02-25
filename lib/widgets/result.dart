import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required double kelvin,
    @required double reamur,
  }) : _kelvin = kelvin, _reamur = reamur, super(key: key);

  final double _kelvin;
  final double _reamur;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Expanded(
          child: Column(
            children: [
              Text(
                "Suhu dalam Kealvin"
              ),
              Text(
                '$_kelvin',
                style: TextStyle(fontSize: 40),
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Suhu dalam Reamur"
              ),
              Text(
                '$_reamur',
                style: TextStyle(fontSize: 40),
              ),
            ],
          ),
        ),
      ],
              );
  }
}