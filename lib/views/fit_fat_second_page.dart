import 'package:flutter/material.dart';
import '../controllers/fit_fat_text.dart';
import '../controllers/display_fit_fat.dart';

class FitFatSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          FitFatText(),
          DisplayFitFat(),
        ],
      ),
    );
  }
}
