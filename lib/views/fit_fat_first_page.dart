import 'package:fit_fat/views/fit_fat_second_page.dart';
import 'package:flutter/material.dart';

import 'fit_fat_blank_page.dart';

class FitFatFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay Fit and Burn Fat'),
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
      body: FitFatBlankPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FitFatSecondPage(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
