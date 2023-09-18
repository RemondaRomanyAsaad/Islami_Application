import 'package:flutter/material.dart';
import 'package:isalami_application/Moduls/quran/quran_details_view.dart';
import 'package:isalami_application/core/theme/application_theme.dart';

import 'HomeLayout/Home.dart';
import 'Moduls/splash_screen/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ApplicationTheme.lightTheme,
        darkTheme: ApplicationTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: Splash.routeName,
        routes: {
          Splash.routeName: (context) => const Splash(),
          Home.routeName: (context) => Home(),
          QuranDetialsView.routeName: (context) => QuranDetialsView(),
        });
  }

}