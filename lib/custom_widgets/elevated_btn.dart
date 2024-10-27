
import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({
    super.key,
    required this.text,
    required this.onPressed
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(.25),
            // color: Color(0xffD32626).withOpacity(.25),
            offset: Offset(0, 4),
            spreadRadius: 0,
            blurRadius: 8,
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: "MetroPolis",
            color: Color(0xffFFFFFF).withOpacity(.85),
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffDB3022),
          surfaceTintColor: Color(0xffDB3022),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          fixedSize: Size.fromWidth(double.maxFinite),
          padding: EdgeInsets.symmetric(vertical: 13),
          elevation: 0,
        ),
      ),
    );
  }
}
