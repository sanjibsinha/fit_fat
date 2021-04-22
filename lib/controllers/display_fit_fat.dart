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
  final List<FitFat> fitFat = [];
  final exerciseType = TextEditingController();
  final timeTaken = TextEditingController();

  double burnCalory(String exerciseType, double timeTaken) {
    double calory;
    if (exerciseType == 'Running' && timeTaken == 30) {
      calory = 500;
      return calory;
    } else if (exerciseType == 'Walking' && timeTaken == 30) {
      calory = 300;
      return calory;
    } else {
      calory = 0;
      return calory;
    }
  }

  void takeInput(String exerciseType, double timeTaken) {
    final exercise = FitFat(
      id: DateTime.now().toString(),
      typeOfExercise: exerciseType,
      minutes: timeTaken,
      calory: burnCalory(exerciseType, timeTaken),
    );
    setState(() {
      fitFat.add(exercise);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Card(
            elevation: 10,
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.blue[50],
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 2,
                ),
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type Walking or Running',
                    ),
                    controller: exerciseType,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type 30 to get the exact calory-burn',
                    ),
                    controller: timeTaken,
                  ),
                  TextButton(
                    onPressed: () {
                      takeInput(
                        exerciseType.text,
                        double.parse(timeTaken.text),
                      );
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
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
        ),
      ],
    );
  }
}
