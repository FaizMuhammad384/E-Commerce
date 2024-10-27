import 'package:flutter/material.dart';
class TopHeaderText extends StatelessWidget {
  const TopHeaderText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "MetroPolis",
        color: Color(0xff222222),
        fontWeight: FontWeight.w700,
        fontSize: 25,
      ),
    );
  }
}
