import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_signup_ui/custome_widgets/different_text_color_widget.dart';
import 'package:login_signup_ui/custome_widgets/elevated_button_widget.dart';
import 'package:login_signup_ui/custome_widgets/text_form_filed_widget.dart';
import 'package:login_signup_ui/utilty/global_utils.dart';
import 'package:login_signup_ui/utilty/signup_utils.dart';
import 'package:login_signup_ui/view/login_view.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
            95.0.verticalSpace,
            Text("Messanger" , style: GlobalUtils.googleFontsFunc(fontSizeText: 40.0 , fontWeightText: FontWeight.w500 , fontColor: GlobalUtils.primaryColor),),
            90.0.verticalSpace,
            Text("Sign Up" , style: GlobalUtils.googleFontsFunc(fontSizeText: 25.0 , fontWeightText: FontWeight.w600 , fontColor: GlobalUtils.primaryColor),),
            10.0.verticalSpace,
            Text("Enter details to create new account." , style: GlobalUtils.googleFontsFunc(fontSizeText: 15.0 , fontWeightText: FontWeight.w400 , fontColor: GlobalUtils.primaryColor),),
             15.0.verticalSpace,
             Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
              child: TextFormFiledWidget(filedController: SignupUtils.firstNameController, labelTextWidget: "First Name", hintTextWidget: "First Name", prefixIconWidget: Icon(Icons.person)),
            ),
              20.0.verticalSpace,
              Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
              child: TextFormFiledWidget(filedController: SignupUtils.lastNameController, labelTextWidget: "Last Name", hintTextWidget: "Last Name", prefixIconWidget: Icon(Icons.person)),
            ),
                      20.0.verticalSpace,

             Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
              child: TextFormFiledWidget(filedController: SignupUtils.emailController, labelTextWidget: "Email", hintTextWidget: "Email", prefixIconWidget: Icon(Icons.email)),
            ),
        
                      20.0.verticalSpace,

             Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
              child: TextFormFiledWidget(filedController: SignupUtils.passwordController, labelTextWidget: "Password", hintTextWidget: "Password", prefixIconWidget: Icon(Icons.lock)),
            ),
                      20.0.verticalSpace,

             Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
              child: TextFormFiledWidget(filedController: SignupUtils.confirmPasswordController, labelTextWidget: "Confirm Password", hintTextWidget: "Confirm Password", prefixIconWidget: Icon(Icons.lock)),
            ),
                          20.0.verticalSpace,

           ElevatedButtonWidget(textWidget: 'Sign up', fontSize: 15.0, textColor: Colors.white , elevatedWidth: 328.0, elevatedHeight: 50.0, backgroundColorButton: Color(0xffF15223),),
           30.0.verticalSpace,
            DifferentTextColorWidget(label: 'Already have an account?', actionLabel: 'Sign in', onTap: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginView())), withSplash: true, mainAxisAlignment: MainAxisAlignment.center,),
        15.0.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}