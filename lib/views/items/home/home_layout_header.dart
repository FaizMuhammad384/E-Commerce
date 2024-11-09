import 'package:e_commerce/custom_widgets/elevated_btn.dart';
import 'package:flutter/material.dart';


class HomeLayoutHeader extends StatelessWidget {
  const HomeLayoutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          child: Image.asset(
            "assets/images/common/images/home_banner_img.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.5),
                Colors.transparent,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Fashion sale",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: ElevatedBtn(
                    text: "Check",
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
