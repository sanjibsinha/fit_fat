import 'package:flutter/material.dart';
import '../controllers/fit_fat_text.dart';
import '../controllers/display_fit_fat.dart';

class FitFatSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Start Building Exercise Chart'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FitFatSecondPage(),
                ),
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            FitFatText(),
            DisplayFitFat(),
          ],
        ),
      ),
    );
  }
}
