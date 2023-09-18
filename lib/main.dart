import 'package:flutter/material.dart';
import 'package:islami_application/splash.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Splash(),
    );
  }

}