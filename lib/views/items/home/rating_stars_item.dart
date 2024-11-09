import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';


class RatingStarsItem extends StatelessWidget {
  const RatingStarsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingStars(
      axis: Axis.horizontal,
      value: 3.5,
      onValueChanged: (v) {
        /// update the value here
      },
      starCount: 5,
      starSize: 15,
      maxValue: 5,
      starSpacing: 2,
      valueLabelVisibility: false,
      animationDuration: Duration(milliseconds: 1000),
      starOffColor: const Color(0xffe7e8ea),
      starColor: Color(0XFFFFBA49),
    );
  }
}
