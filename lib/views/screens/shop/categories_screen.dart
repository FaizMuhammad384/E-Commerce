import 'package:e_commerce/custom_widgets/back_btn.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var categories = [
      "Tops",
      "Shirts",
      "Jeans",
      "Dresses",
      "Pants",
    ];
    return Scaffold(
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Choose Category",
                style: TextStyle(
                  color: Color(0xff9B9B9B),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: categories.length,
                separatorBuilder: (_, index) => Divider(
                  color: Color(0xff9B9B9B).withOpacity(.5),
                  thickness: 0.4,
                ),
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(
                      categories[index].toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff222222),
                      ),
                    ),
                    dense: true,
                    onTap: () {},
                    contentPadding: EdgeInsets.symmetric(horizontal: 13),
                    minTileHeight: 20,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
