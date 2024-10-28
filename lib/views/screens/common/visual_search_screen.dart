import 'package:e_commerce/custom_widgets/back_btn.dart';
import 'package:e_commerce/custom_widgets/elevated_btn.dart';
import 'package:e_commerce/custom_widgets/outline_btn.dart';
import 'package:e_commerce/helpers/app_images.dart';
import 'package:e_commerce/views/screens/common/taking_photo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VisualSearchScreen extends StatelessWidget {
  const VisualSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        appBar: AppBar(
          leading: BackBtn(),
          title: Text(
            "Visual search",
            style: TextStyle(
              color: Color(0xff222222),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: "MetroPolis",
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages().visualSearch),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text("Search for an outfit by taking a photo or uploading an image",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                    fontFamily: "MetroPolis",
                    color: Colors.white,
                   ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ElevatedBtn(
                    text: "TAKE A PHOTO",
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      => TakingPhotoScreen()));
                    },
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: OutlineBtn(
                    text: "UPLOAD AN IMAGE",
                    onPressed: (){},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
