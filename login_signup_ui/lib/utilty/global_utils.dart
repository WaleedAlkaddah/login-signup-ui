
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalUtils {
  static const Color primaryColor = Colors.orange;


  static TextStyle googleFontsFunc({
    required double fontSizeText,
    FontWeight? fontWeightText,
    Color? fontColor
  }){
    return GoogleFonts.poppins(
      fontSize: fontSizeText.sp,
      fontWeight: fontWeightText ?? FontWeight.normal,
    color: fontColor ?? Colors.black,
    );
  }
}