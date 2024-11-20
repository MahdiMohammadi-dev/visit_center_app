import 'package:flutter/material.dart';
import 'package:visitcenter/constant/app_colors.dart';
import 'package:visitcenter/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(buttonColor: primaryColor),
        useMaterial3: true,
      ),
      home:SplashScreen(),
    );
  }
}

