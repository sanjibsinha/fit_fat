import 'package:flutter/material.dart';
import '../models/fit_fat.dart';

class MinuteAndCalorie extends StatelessWidget {
  const MinuteAndCalorie({
    Key? key,
    required this.f,
  }) : super(key: key);

  final FitFat f;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.yellow[100],
            border: Border.all(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
          child: Text(
            'Minutes: ${f.minutes}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.yellow[100],
            border: Border.all(
              color: Colors.blueAccent,
              width: 2,
            ),
          ),
          child: Text(
            'Calory Burned: ${f.calory}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
