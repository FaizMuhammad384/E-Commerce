import 'package:e_commerce/custom_widgets/icon_btn.dart';
import 'package:e_commerce/helpers/app_colors.dart';
import 'package:e_commerce/helpers/app_images.dart';
import 'package:e_commerce/custom_widgets/back_btn.dart';
import 'package:e_commerce/custom_widgets/elevated_btn.dart';
import 'package:e_commerce/custom_widgets/my_text_field.dart';
import 'package:e_commerce/custom_widgets/top_header_text.dart';
import 'package:e_commerce/views/screens/forgot_password_screen.dart';
import 'package:e_commerce/views/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// form key
    GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
    AppImages appImages = AppImages();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: BackBtn(),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: TopHeaderText(
                  text: "Login",
                ),
              ),
              SizedBox(height: 50),
              Form(
                key: loginFormKey,
                child: Column(
                  children: [
                    MyTextField(
                      labelText: "Email",
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return "Please enter your email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    MyTextField(
                      labelText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                      controller: passwordController,
                      validator: (newValue){
                        if(newValue == null || newValue.isEmpty || newValue.length < 6 ){
                          return "Please enter minimum 6 characters";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot your password?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                fontFamily: "MetroPolis",
                                color: Color(0xff222222),
                              ),
                            ),
                            Image.asset(
                              appImages.forwardArrow,
                              height: 20,
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 28),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: ElevatedBtn(
                        text: "LOGIN",
                        onPressed: () {
                          if(loginFormKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Or login with social account",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "MetroPolis",
                    // color: AppColors().greyColor,
                    color: Color(0xff222222),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconBtn(onPressed: () {}, image: appImages.googleLogo),
                  SizedBox(width: 15),
                  IconBtn(onPressed: () {}, image: appImages.facebookLogo),
                ],
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
