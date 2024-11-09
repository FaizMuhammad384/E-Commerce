import 'package:e_commerce/custom_widgets/elevated_btn.dart';
import 'package:e_commerce/views/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FindingResultScreen extends StatelessWidget {
  const FindingResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(milliseconds: 300), () {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    // });
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search_rounded,
                  size: 40,
                  color: Color(0xffDB3022),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    "Finding similar results...",
                    style: TextStyle(
                      color: Color(0xff222222),
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      fontFamily: "MetroPolis",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedBtn(
                    text: "HomeScreen",
                    onPressed: () {
                      Future.delayed(Duration(milliseconds: 300), () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      });
                    },
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
