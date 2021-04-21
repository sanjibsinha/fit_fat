import 'package:flutter/material.dart';
import '../models/fit_fat.dart';
import 'type_of_exercise.dart';
import 'minute_and_calorie.dart';

class DisplayFitFat extends StatefulWidget {
  DisplayFitFat({Key? key}) : super(key: key);

  @override
  _DisplayFitFatState createState() => _DisplayFitFatState();
}

class _DisplayFitFatState extends State<DisplayFitFat> {
  final List<FitFat> fitFat = [
    FitFat(
      id: DateTime.now().day.toString(),
      typeOfExercise: 'Walking',
      minutes: 43.50,
      calory: 235,
    ),
    FitFat(
      id: DateTime.now().day.toString(),
      typeOfExercise: 'Walking',
      minutes: 45.00,
      calory: 243,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: fitFat.map((e) {
          return Card(
            elevation: 15,
            child: Column(
              children: [
                TypeOfExercise(
                  f: e,
                ),
                MinuteAndCalorie(
                  f: e,
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
