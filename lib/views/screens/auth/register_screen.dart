import 'package:e_commerce/custom_widgets/back_btn.dart';
import 'package:e_commerce/custom_widgets/elevated_btn.dart';
import 'package:e_commerce/custom_widgets/icon_btn.dart';
import 'package:e_commerce/custom_widgets/my_text_field.dart';
import 'package:e_commerce/custom_widgets/top_header_text.dart';
import 'package:e_commerce/helpers/app_images.dart';
import 'package:e_commerce/providers/auth_provider.dart';
import 'package:e_commerce/views/screens/common/visual_search_screen.dart';
import 'package:e_commerce/views/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Build Function Called!!!");
    GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
    AppImages appImages = AppImages();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackBtn(),

      ),
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle(systemNavigationBarColor: Color(0xffF9F9F9)),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: TopHeaderText(
                    text: "Sign up",
                  ),
                ),
                SizedBox(height: 50),
                Form(
                  key: registerFormKey,
                  child: Column(
                  children: [
                    Consumer<AuthProvider>(builder: (ctx,authProvider, child){
                      return MyTextField(
                        labelText: "Name",
                        keyboardType: TextInputType.name,
                        controller: nameController,
                        onChanged: (value) {
                          authProvider.updateName(value);
                        },
                        validator: (value){
                          if(value == null || value.isEmpty || value.length < 6){
                            return "Please enter minimum 6 characters";
                          }
                          return null;
                        },
                        suffixIcon: authProvider.isNameValid
                            ? Container(
                          height: 20,width: 20,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(appImages.checkMark),scale: 4.5)
                          ),
                        )
                            : SizedBox(),
                      );
                    }),
                    SizedBox(height: 10),
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
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Already have an account?",
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
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: ElevatedBtn(
                        text: "SIGN UP",
                        onPressed: () {
                          if(registerFormKey.currentState!.validate()){
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => VisualSearchScreen(),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Or sign up with social account",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "MetroPolis",
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
      ),
    );
  }
}
