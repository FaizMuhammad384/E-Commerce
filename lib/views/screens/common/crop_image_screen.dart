import 'package:e_commerce/custom_widgets/back_btn.dart';
import 'package:e_commerce/helpers/app_images.dart';
import 'package:e_commerce/views/screens/common/finding_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CropImageScreen extends StatelessWidget {
  const CropImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppImages appImages = AppImages();
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        appBar: AppBar(
          leading: BackBtn(),
          title: Text(
            "Crop the item",
            style: TextStyle(
                color: Color(0xff222222),
                fontSize: 18,
                fontFamily: "MetroPolis",
                fontWeight: FontWeight.w500),
          ),
        ),
        body: SafeArea(
          child: Image.asset(
            appImages.cropPhoto,
            fit: BoxFit.cover,
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FindingResultScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 22,
              ),
              style: IconButton.styleFrom(
                backgroundColor: Color(0xffDB3022),
                shape: CircleBorder(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
