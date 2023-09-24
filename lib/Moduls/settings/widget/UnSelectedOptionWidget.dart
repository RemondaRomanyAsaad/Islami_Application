import 'package:flutter/material.dart';

class UnSelectedOptionWidget extends StatefulWidget {
  final String UnSelectedItem;

  const UnSelectedOptionWidget({super.key, required this.UnSelectedItem});

  @override
  State<UnSelectedOptionWidget> createState() => _UnSelectedOptionWidgetState();
}

class _UnSelectedOptionWidgetState extends State<UnSelectedOptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.UnSelectedItem),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.06),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
      ),
    );
  }
}
