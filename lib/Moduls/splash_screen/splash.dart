import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("assets/images/Splash_BackGround.png"),
    );
  }
}
