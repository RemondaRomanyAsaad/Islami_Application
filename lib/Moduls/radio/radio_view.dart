import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});
  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child:
              Container(child: Image.asset("assets/images/radio_header.png")),
        ),
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "اذاعه القران الكريم",
                  style: them.textTheme.bodyLarge,
                ),
                Expanded(
                  child:
                      Container(child: Image.asset("assets/images/play.png")),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
