import 'package:e_commerce/providers/auth_provider.dart';
import 'package:e_commerce/views/screens/auth/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff222222)),
        useMaterial3: true,
        scaffoldBackgroundColor: Color(0xffF9F9F9),
        appBarTheme: AppBarTheme (
          backgroundColor: Color(0xffF9F9F9),
          surfaceTintColor: Color(0xffF9F9F9),
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthProvider()),
        ],
        child: RegisterScreen(),
      ),
    );
  }
}

