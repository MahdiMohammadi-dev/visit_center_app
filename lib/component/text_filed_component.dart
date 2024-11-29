import 'package:flutter/material.dart';
import 'package:visitcenter/constant/app_colors.dart';

class Text_Field_Component extends StatelessWidget {
  const Text_Field_Component({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
      child: TextField(
        textDirection: TextDirection.rtl,
        style: TextStyle(fontSize: 18, color: blackColor,fontFamily: 'vazir_medium'),
        decoration: InputDecoration(

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:  BorderSide(color: primaryColor,width:2 ),
          ),
          filled: true,
          fillColor: const Color(0xffD9D9D9),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xff858585)),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
