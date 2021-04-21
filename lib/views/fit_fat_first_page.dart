import 'package:flutter/material.dart';

import 'fit_fat_second_page.dart';

class FitFatFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay Fit and Burn Fat'),
        actions: [
          IconButton(
            onPressed: () {
              // print('object');
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: FitFatSecondPage(),
    );
  }
}
