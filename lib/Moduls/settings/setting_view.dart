import 'package:flutter/cupertino.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        " SETTING VIEW",
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
