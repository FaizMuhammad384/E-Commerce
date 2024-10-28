import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FindingResultScreen extends StatelessWidget {
  const FindingResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
