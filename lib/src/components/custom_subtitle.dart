import 'package:flutter/material.dart';

class CustomSubtitle extends StatelessWidget {
  String? subtitle;

  CustomSubtitle({Key? key, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(subtitle == null || subtitle == ""
            ? Icons.not_interested
            : Icons.house),
        Text(subtitle == null || subtitle == "" ? "sem casa" : subtitle!),
      ],
    );
  }
}
