import 'package:flutter/material.dart';
import 'package:instagram/pages/homePage.dart';

import 'package:intl/date_symbol_data_local.dart';

import 'configs/cnstants.dart';

void main() {
  _initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Pacifico',
      ),
      home: HomePage(),
    );
  }
}

void _initialize() {
  initializeDateFormatting("ja");
}
