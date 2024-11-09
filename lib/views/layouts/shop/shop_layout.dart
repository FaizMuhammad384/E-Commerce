import 'package:e_commerce/custom_widgets/back_btn.dart';
import 'package:e_commerce/providers/shop_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../items/shop/kids_category_item.dart';
import '../../items/shop/mens_category_item.dart';
import '../../items/shop/women_category_item.dart';


class ShopLayout extends StatelessWidget {
  const ShopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.black.withOpacity(.35),
          title: Text(
            "Categories",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff222222),
            ),
          ),
          leading: BackBtn(),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                size: 28,
                color: Color(0xff222222),
              ),
            ),
          ],
        ),
        body: Consumer<ShopProvider>(
          builder: (context, shopProvider, child) {
            return Column(
              children: [
                SizedBox(height: 10),
                TabBar(
                  dividerHeight: 0,
                  indicatorWeight: 3,
                  indicatorColor: Color(0xffDB3022),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: TextStyle(
                    color: Color(0xff222222),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: Color(0xff222222),
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                  onTap: shopProvider.changeIndex,
                  tabs: [
                    Tab(
                      text: "Men",
                    ),
                    Tab(
                      text: "Women",
                    ),
                    Tab(
                      text: "Kids",
                    ),
                  ],
                ),
                SizedBox(height: 15),
                // SalesBanner(),
                // SizedBox(height: 15),
                Expanded(
                  child: TabBarView(
                    children: [
                      MensCategoryItem(),
                      WomenCategoryItem(),
                      KidsCategoryItem(),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
