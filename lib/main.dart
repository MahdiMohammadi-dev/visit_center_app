import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:visitcenter/constant/app_colors.dart';
import 'package:visitcenter/screens/doctor_reserve_screen/doctor_reserve_screen.dart';
import 'package:visitcenter/screens/main_screen/main_screen.dart';
import 'package:visitcenter/screens/splash_screen/splash_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale("fa","IR"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(buttonColor: primaryColor),
        useMaterial3: true,
      ),
      //home:SplashScreen(),
      //home: MainScreen(),
      home: const DoctorReserveScreen(),
    );
  }
}

