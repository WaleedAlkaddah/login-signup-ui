
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_signup_ui/utilty/global_utils.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String textWidget;
  final double fontSize;
  final Color textColor;
  final double elevatedWidth;
  final double elevatedHeight;
  final Color backgroundColorButton;
  const ElevatedButtonWidget({super.key, required this.textWidget, required this.fontSize, required this.textColor, required this.elevatedWidth, required this.elevatedHeight, required this.backgroundColorButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: elevatedWidth.w,
      height: elevatedHeight.h,
      child: ElevatedButton(onPressed: (){}, 
      style: ElevatedButton.styleFrom(
        backgroundColor:backgroundColorButton ,
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0).r,
        ),
      ),
      child: Text(
      textWidget  , style: GlobalUtils.googleFontsFunc(fontSizeText: fontSize.sp , fontColor: textColor , fontWeightText: FontWeight.w300),
      ),) );
  }
}