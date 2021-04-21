import 'package:flutter/material.dart';

void main() {
  runApp(FitFatApp());
}

class FitFatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FitFatFirstPage(),
    );
  }
}

class FitFatFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stay Fit and Burn Fat'),
        actions: [
          Icon(Icons.add),
        ],
      ),
      body: FitFatSecondPage(),
    );
  }
}

class FitFatSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Text('data'),
        ],
      ),
    );
  }
}
