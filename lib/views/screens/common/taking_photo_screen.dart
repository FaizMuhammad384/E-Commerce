import 'package:e_commerce/custom_widgets/back_btn.dart';
import 'package:e_commerce/helpers/app_images.dart';
import 'package:e_commerce/views/screens/common/crop_image_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TakingPhotoScreen extends StatelessWidget {
  const TakingPhotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppImages appImages = AppImages();
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        appBar: AppBar(
          leading: BackBtn(),
          title: Text(
            "Search by taking a photo",
            style: TextStyle(
              color: Color(0xff222222),
              fontSize: 18,
              fontFamily: "MetroPolis",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SafeArea(
          child: Image.asset(
            appImages.takingPhoto,
                  fit: BoxFit.cover,
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
          ), 
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Image.asset(appImages.flashIcon,
               height: 23,
               width: 23,
               ),
               SizedBox(width: 35),
               IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)
                  => CropImageScreen()));
                },
                icon: Image.asset(appImages.cameraIcon,
                height: 24,
                width: 24,
                ),
                style: IconButton.styleFrom(
                  backgroundColor: Color(0xffDB3022),
                  shape: CircleBorder(),
                ),
              ),
               SizedBox(width: 35),
               Image.asset(appImages.swipeIcon,
                height: 23,
                width: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
