
import 'package:Love.Clothes/screens/firstpage/firstpage.dart';
import 'package:flutter/material.dart';

import 'app/service_locator.dart';
import 'screens/firstpage/firstpage.dart';

void main() {
  initializeServiceLocator();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Love Clothes',
    theme: ThemeData(
      primarySwatch: Colors.yellow,
    ),
    home: WelcomePage(),
   
  ));
}
