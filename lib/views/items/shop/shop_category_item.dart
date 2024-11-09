import 'package:flutter/material.dart';

class ShopCategoryItem extends StatelessWidget {
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(.2),
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Color(0xff222222),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            child: Image.asset(
              image,
              width: 100,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  const ShopCategoryItem({
    required this.image,
    required this.title,
  });
}
