import  'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_signup_ui/utilty/global_utils.dart';

class TextFormFiledWidget extends StatelessWidget {
  final TextEditingController filedController;
  final String labelTextWidget;
  final String hintTextWidget;
  final Icon prefixIconWidget;
  const TextFormFiledWidget({super.key, required this.filedController, required this.labelTextWidget, required this.hintTextWidget, required this.prefixIconWidget});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: filedController,
      decoration: InputDecoration(
        labelText: labelTextWidget,
        hintText: hintTextWidget,
        prefixIcon: prefixIconWidget,
        filled: true,
        fillColor: const Color(0xffEEECEC),
        hintStyle: GlobalUtils.googleFontsFunc(fontSizeText: 14.0 , fontWeightText: FontWeight.w400 ),
        labelStyle: GlobalUtils.googleFontsFunc(fontSizeText: 10.0 , fontWeightText: FontWeight.w400 ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0).r,
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0).r,
                    borderSide: BorderSide(color: GlobalUtils.primaryColor , width: 2.0.w),


        ),
      ),
    );
  }
}