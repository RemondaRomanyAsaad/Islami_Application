import 'dart:async';

import 'package:flutter/material.dart';
import 'package:isalami_application/HomeLayout/Home.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    var mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        "assets/images/Splash_BackGround.png",
        width: mediaquery.width,
        height: mediaquery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
