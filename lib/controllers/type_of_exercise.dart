import 'package:flutter/material.dart';
import '../models/fit_fat.dart';

class TypeOfExercise extends StatelessWidget {
  const TypeOfExercise({
    Key? key,
    required this.f,
  }) : super(key: key);

  final FitFat f;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.green[100],
        border: Border.all(
          color: Colors.redAccent,
          width: 2,
        ),
      ),
      child: Text(
        f.typeOfExercise,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }
}
