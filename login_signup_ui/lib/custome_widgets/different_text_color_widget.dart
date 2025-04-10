
import 'package:flutter/material.dart';
import 'package:login_signup_ui/utilty/global_utils.dart';

class DifferentTextColorWidget extends StatelessWidget {
  final String label;
  final String actionLabel;
  final VoidCallback onTap;
  final bool withSplash;
  final MainAxisAlignment mainAxisAlignment;
  const DifferentTextColorWidget({super.key, required this.label, required this.actionLabel, required this.onTap, required this.withSplash, required this.mainAxisAlignment});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(label , style: GlobalUtils.googleFontsFunc(fontSizeText: 12.0 , fontWeightText: FontWeight.w400 , ),),
        if(withSplash)
        Text("/" , style:GlobalUtils.googleFontsFunc(fontSizeText: 14.0 , fontWeightText: FontWeight.w400 , fontColor: GlobalUtils.primaryColor) ,),
        InkWell(
          onTap: onTap,
          child: Text(actionLabel , style:GlobalUtils.googleFontsFunc(fontSizeText: 14.0 , fontWeightText: FontWeight.w400 , fontColor: GlobalUtils.primaryColor) ,)),

      ],
    );
  }
}