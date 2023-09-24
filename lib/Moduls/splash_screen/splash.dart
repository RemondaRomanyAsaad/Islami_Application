import 'dart:async';

import 'package:flutter/material.dart';
import 'package:isalami_application/HomeLayout/Home.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        appProvider.isDark()
            ? "assets/images/SplashDark.png"
            : "assets/images/Splash_BackGround.png",
        width: mediaquery.width,
        height: mediaquery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
