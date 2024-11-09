import 'package:e_commerce/views/items/shop/sales_banner.dart';
import 'package:e_commerce/views/items/shop/shop_category_item.dart';
import 'package:e_commerce/views/screens/shop/categories_screen.dart';
import 'package:flutter/material.dart';

class MensCategoryItem extends StatelessWidget {
  const MensCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/images/utils/men_shirts.jpeg",
      "assets/images/utils/men_pants.webp",
      "assets/images/utils/men_shoes.jpeg",
      "assets/images/utils/men_bag.webp",
    ];
    var title = [
      "Shirts",
      "Jeans",
      "Shoes",
      "Jewelry",
    ];
    return Column(
      children: [
        SalesBanner(),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CategoriesScreen()),
                  );
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xff222222),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Expanded(
          child: ListView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return ShopCategoryItem(
                title: title[index].toString(),
                image: images[index].toString(),
              );
            },
          ),
        ),
      ],
    );
  }
}
