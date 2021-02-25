import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    @required this.celciusController,
  }) : super(key: key);

  final TextEditingController celciusController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: celciusController,
      decoration: InputDecoration(
      hintText: 'Masukkan Suhu Dalam Celcius',
      ),
     keyboardType: TextInputType.number,
    );
  }
}