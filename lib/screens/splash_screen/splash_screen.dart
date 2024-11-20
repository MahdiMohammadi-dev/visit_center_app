import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:visitcenter/constant/app_colors.dart';
import 'package:visitcenter/screens/main_screen/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<dynamic> gotoHomePage() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainScreen(),
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gotoHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/img/logo.png'),
            SizedBox(
              height: 15,
            ),
            Text(
              'ویزیت سنتر',
              style: TextStyle(
                  fontSize: 70, color: primaryColor, fontFamily: 'aviny'),
            ),
            SizedBox(
              height: 25,
            ),
            const SpinKitFadingCube(
              color: primaryColor,
              duration: Duration(seconds: 5),
            )
          ],
        ),
      ),
    ));
  }
}
