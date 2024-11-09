import 'package:e_commerce/providers/auth_provider.dart';
import 'package:e_commerce/providers/home_provider.dart';
import 'package:e_commerce/providers/shop_provider.dart';
import 'package:e_commerce/views/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) => ShopProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "MetroPolis",
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffF9F9F9),
          surfaceTintColor: Color(0xffF9F9F9),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Color(0xffF9F9F9),
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff222222)),
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
