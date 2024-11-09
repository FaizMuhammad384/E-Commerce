import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {


  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xff222222),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Color(0xff9B9B9B),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: GestureDetector(
        onTap: onTap,
        child: Text(
          "View all",
          style: TextStyle(
            color: Color(0xff222222),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
    );
  }

  const ListTileItem({
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
}
