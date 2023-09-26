import 'package:flutter/material.dart';

class SelectedOptionWidget extends StatefulWidget {
  final String SelectedItem;

  const SelectedOptionWidget({super.key, required this.SelectedItem});

  @override
  State<SelectedOptionWidget> createState() => _SelectedOptionWidgetState();
}

class _SelectedOptionWidgetState extends State<SelectedOptionWidget> {
  @override
  Widget build(BuildContext context) {
    var them = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.SelectedItem),
          Icon(
            Icons.check,
            color: const Color(0xffFACC1D),
          )
        ],
      ),
    );
  }
}
