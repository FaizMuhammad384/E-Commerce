import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  const IconBtn({
    super.key,
    required this.onPressed,
    required this.image,
  });

  final String image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Color(0xff000000).withOpacity(.05),
            offset: Offset(0, 1),
            spreadRadius: 0,
            blurRadius: 8,
          ),
        ],
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(
          image,
          height: 25,
          width: 25,
        ),
        style: IconButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ),
    );
  }
}
