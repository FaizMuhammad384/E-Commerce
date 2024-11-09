import 'package:flutter/material.dart';


class SalesBanner extends StatelessWidget {
  const SalesBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 100,
      decoration: BoxDecoration(
        color: Color(0xffDB3022),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "SUMMER SALES",
            style: TextStyle(
              fontSize: 23,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Up to 50% off",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
