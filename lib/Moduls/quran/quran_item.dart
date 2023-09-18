import 'package:flutter/material.dart';

class QuranItem extends StatefulWidget {
  final String SuraName;
  final String SuraNumber;

  const QuranItem(
      {super.key, required this.SuraName, required this.SuraNumber});

  @override
  State<QuranItem> createState() => _QuranItemState();
}

class _QuranItemState extends State<QuranItem> {
  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(widget.SuraNumber,
              textAlign: TextAlign.center, style: them.textTheme.bodyLarge),
        ),
        Container(
          width: 1.2,
          height: 45,
          color: them.primaryColor,
        ),
        Expanded(
            child: Text(widget.SuraName,
                textAlign: TextAlign.center, style: them.textTheme.bodyLarge)),
      ],
    );
  }
}
