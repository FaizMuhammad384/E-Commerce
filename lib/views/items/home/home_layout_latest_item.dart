import 'package:e_commerce/views/items/home/rating_stars_item.dart';
import 'package:flutter/material.dart';


class HomeLayoutLatestItem extends StatelessWidget {
  const HomeLayoutLatestItem({super.key,required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      // color: Colors.red,
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          Container(
            height: 220,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  // images[index].toString(),
                  image,
                ),
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.withOpacity(.2),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "New",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11,
                fontWeight: FontWeight.w500,
              ),
            ),
            padding:
            EdgeInsets.symmetric(horizontal: 7, vertical: 2.5),
            margin:
            EdgeInsets.symmetric(horizontal: 7, vertical: 7),
          ),
          Positioned(
            bottom: 80,
            right: 2,
            child: Container(
              height: 54,
              width: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(
                  Icons.favorite_border,
                  color: Color(0xff9B9B9B),
                  size: 25,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 13,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// rating stars
                RatingStarsItem(),

                Text(
                  "Dorothy Perkins",
                  style: TextStyle(
                    color: Color(0xff9B9B9B),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Evening Dresses",
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: "15\$",
                    style: TextStyle(
                      color: Color(0xff9C9C9C),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    children: [
                      TextSpan(
                        text: "  12\$",
                        style: TextStyle(
                          color: Color(0xffDB3022),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
