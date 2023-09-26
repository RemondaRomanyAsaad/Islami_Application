import 'package:flutter/material.dart';

typedef SettingOptionClicked = void Function();

class SettingItem extends StatefulWidget {
  final String SettingOptionTitle;
  final SettingOptionClicked OnOptionTap;

  final String SelectedOption;

  SettingItem(
      {super.key,
      required this.OnOptionTap,
      required this.SettingOptionTitle,
      required this.SelectedOption});

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    var media = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.SettingOptionTitle,
          textAlign: TextAlign.start,
          style: them.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: widget.OnOptionTap,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 55,
            width: media.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: them.colorScheme.onSecondary, width: 1.2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.SelectedOption),
                Icon(Icons.arrow_drop_down, color: them.colorScheme.onSecondary)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
