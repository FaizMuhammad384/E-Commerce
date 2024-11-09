import 'package:e_commerce/views/items/home/list_tile_item.dart';
import 'package:e_commerce/views/items/home/view_all_grid_item.dart';
import 'package:flutter/material.dart';

class ViewAllHomeScreen extends StatelessWidget {
  const ViewAllHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/images/utils/home_img_01.png",
      "assets/images/utils/home_img_02.png",
      "assets/images/utils/home_img_03.png",
      "assets/images/utils/home_img_04.png",
      "assets/images/utils/home_img_02.png",
      "assets/images/utils/home_img_03.png",
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// header item
            Container(
              width: double.maxFinite,
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/utils/view_all_banner.png"),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Street clothes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),

            /// list tile item
            ListTileItem(
              title: "Sale",
              subtitle: "Super summer sale",
              onTap: () {},
            ),

            Expanded(
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 320,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                ),
                itemBuilder: (_, index) {
                  return ViewAllGridItem(image: images[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
