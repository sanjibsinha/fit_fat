import 'package:flutter/material.dart';

import 'fit_fat_first_page.dart';

class FitFatApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FitFatFirstPage(),
    );
  }
}
