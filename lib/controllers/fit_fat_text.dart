import 'package:flutter/material.dart';

class FitFatText extends StatelessWidget {
  const FitFatText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
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
        'Input time and type of exercise and find how many calories you burn',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 20,
        ),
      ),
    );
  }
}
