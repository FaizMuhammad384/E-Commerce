import 'package:e_commerce/helpers/app_images.dart';
import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.0, bottom: 14.0, right: 14.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          AppImages().backArrow,
          height: 23,
          width: 23,
        ),
      ),
    );
  }
}
