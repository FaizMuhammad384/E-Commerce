import 'package:e_commerce/views/items/home/home_layout_header.dart';
import 'package:e_commerce/views/items/home/home_layout_latest_item.dart';
import 'package:e_commerce/views/items/home/list_tile_item.dart';
import 'package:e_commerce/views/screens/home/view_all_home_screen.dart';
import 'package:flutter/material.dart';



class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/images/utils/home_img_01.png",
      "assets/images/utils/home_img_02.png",
      "assets/images/utils/home_img_03.png",
      "assets/images/utils/home_img_04.png",
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          /// image with drop shadow
          HomeLayoutHeader(),
          SizedBox(height: 10),
          ListTileItem(
            title: "New",
           subtitle: "You've never seen before it!",
            onTap:  () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewAllHomeScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 320,
            child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return HomeLayoutLatestItem(
                  image: images[index],
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
