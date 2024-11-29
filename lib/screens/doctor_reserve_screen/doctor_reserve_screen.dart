import 'package:flutter/material.dart';
import 'package:visitcenter/constant/app_colors.dart';

class DoctorReserveScreen extends StatelessWidget {
  const DoctorReserveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: whiteColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: whiteColor,
              centerTitle: true,
              title: Text(
                'قرار ملافات با دکتر',
                style: TextStyle(
                    fontFamily: 'vazir_bold',
                    fontSize: 18,
                    color: primaryColor),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              grayColor.withOpacity(0.8),
                              grayColor.withOpacity(0.2),
                              grayColor.withOpacity(0.8),
                            ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
                            child: Image.asset('assets/img/doctor.png',fit: BoxFit.fill,),
                          ),
                        ),
                        Column(
                          children: [
                            
                          ],
                        )
                      ],
                    )
                  ),
                ],
              ),
            )));
  }
}
