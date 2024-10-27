import 'package:e_commerce/custom_widgets/back_btn.dart';
import 'package:e_commerce/custom_widgets/elevated_btn.dart';
import 'package:e_commerce/custom_widgets/my_text_field.dart';
import 'package:e_commerce/custom_widgets/top_header_text.dart';
import 'package:e_commerce/helpers/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppImages appImages = AppImages();
    TextEditingController emailController = TextEditingController();
    GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: BackBtn(),
        ),
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: TopHeaderText(
                    text: "Forgot password",
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text(
                    "Please, enter your email address. You will receive a link to create a new password via email.",
                    style: TextStyle(
                      fontFamily: "MetroPolis",
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Color(0xff222222),
                    ),
                  ),
                ),
                SizedBox(height: 17),
                MyTextField(
                  labelText: "Email",
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  suffixIcon: emailController.text.length > 6
                      ? Image.asset(
                        appImages.crossIcon,
                        height: 20,
                        width: 20,
                        scale: 4.5,
                      )
                      : SizedBox(),
                ),
                SizedBox(height: 60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ElevatedBtn(
                    text: "SEND",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        /// next move on
                      }
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
