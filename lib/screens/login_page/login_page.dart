import 'package:flutter/material.dart';
import 'package:visitcenter/component/text_filed_component.dart';
import 'package:visitcenter/constant/app_colors.dart';
import 'package:visitcenter/screens/main_screen/main_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                    child: Text(
                  'خوش آمدید',
                  style: TextStyle(
                      fontFamily: 'vazir_bold',
                      fontSize: 25,
                      color: primaryColor),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.40, top: 50),
                child: Text(
                  'ورود به ویزیت سنتر',
                  style: TextStyle(
                      fontFamily: 'vazir_bold', fontSize: 26, color: blackColor),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: size.width * 0.30, top: 15, right: 20),
                child: Text(
                  'برای استفاده از سامانه ویزیت سنتر باید  وارد حساب خود شوید',
                  style: TextStyle(
                      fontFamily: 'vazir_medium', fontSize: 18, color: grayColor),
                  textDirection: TextDirection.rtl,
                ),
              ),
          
              /// username text filed
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.60, top: 40),
                child: Text(
                  'نام کاربری',
                  style: TextStyle(
                      fontFamily: 'vazir_bold', fontSize: 26, color: blackColor),
                ),
              ),
              Text_Field_Component(),
          
              /// password text filed
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.60, top: 40),
                child: Text(
                  'رمز عبور',
                  style: TextStyle(
                      fontFamily: 'vazir_bold', fontSize: 26, color: blackColor),
                ),
              ),
              Text_Field_Component(),
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.60, top: 25),
                child: Text(
                  'فراموشی رمز عبور',
                  style: TextStyle(
                      fontFamily: 'vazir_medium',
                      fontSize: 17,
                      color: blackColor),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: size.width - 60,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen(),));
                    },
                    child: Text(
                      'ورود',
                      style: TextStyle(
                          fontFamily: 'vazir_bold',
                          fontSize: 25,
                          color: whiteColor),
                    )),
              ),
              SizedBox(height: 300,),
            ],
          ),
        ),
      ),
    );
  }
}
