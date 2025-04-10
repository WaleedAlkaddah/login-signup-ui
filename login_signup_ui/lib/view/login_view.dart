
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_signup_ui/custome_widgets/different_text_color_widget.dart';
import 'package:login_signup_ui/custome_widgets/elevated_button_widget.dart';
import 'package:login_signup_ui/custome_widgets/text_form_filed_widget.dart';
import 'package:login_signup_ui/utilty/global_utils.dart';
import 'package:login_signup_ui/utilty/login_utils.dart';
import 'package:login_signup_ui/view/signup_view.dart';
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
          95.0.verticalSpace,
          Text("Messanger" , style: GlobalUtils.googleFontsFunc(fontSizeText: 40.0 , fontWeightText: FontWeight.w500 , fontColor: GlobalUtils.primaryColor),),
          90.0.verticalSpace,
          Text("Login" , style: GlobalUtils.googleFontsFunc(fontSizeText: 25.0 , fontWeightText: FontWeight.w600 , fontColor: GlobalUtils.primaryColor),),
          11.0.verticalSpace,         
          Text("Login into your account" , style: GlobalUtils.googleFontsFunc(fontSizeText: 15.0 , fontWeightText: FontWeight.w400 , fontColor: GlobalUtils.primaryColor),),
          62.0.verticalSpace,
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
            child: TextFormFiledWidget(filedController: LoginUtils.emailController, labelTextWidget: "Email/Phone", hintTextWidget: "Email/Phone", prefixIconWidget: Icon(Icons.email)),
          ),
          20.0.verticalSpace,
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
            child: TextFormFiledWidget(filedController: LoginUtils.passwordController, labelTextWidget: "Password", hintTextWidget: "Password", prefixIconWidget: Icon(Icons.lock)),
          ),
          20.0.verticalSpace,
          Padding(
            padding:  EdgeInsets.only(right: 30.0.w),
            child: DifferentTextColorWidget(label: 'Forget Password?', actionLabel: 'Reset', onTap: () {  }, withSplash: true, mainAxisAlignment: MainAxisAlignment.end,),
          ),
          20.0.verticalSpace,
          ElevatedButtonWidget(textWidget: 'Sign in', fontSize: 15.0, textColor: Colors.white , elevatedWidth: 328.0, elevatedHeight: 50.0, backgroundColorButton: Color(0xffF15223),),
          const Spacer(),
          DifferentTextColorWidget(label: 'Dont have any account?', actionLabel: 'Sign up', onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignupView())), withSplash: false, mainAxisAlignment: MainAxisAlignment.center,),
          10.0.verticalSpace,
          ],
        ),
      ),
    );
  }
}