import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/components/custom_text_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_textfield.dart';
import 'package:metrocay_cpt_user/src/components/custom_transbus.dart';
import 'package:metrocay_cpt_user/src/features/auth/forgot_password/forgot_password_screen.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_15),
          children: [
            CustomTransBus(),
            Align(
              heightFactor: 2,
              alignment: Alignment.center,
              child: Column(
                children: [
                  CustomText(
                      text: strWelcomeBack,
                      color1: AppColors.black,
                      fontWeight: fontWeight600,
                      fontSize: font_25),
                  CustomText(
                      text: strEnterLoginCredentials,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_14),
                ],
              )
            ),

            CustomText(
                text: strUsername,
                color1: AppColors.black,
                fontWeight: fontWeight500,
                fontSize: font_13,
            height: height_8
            ),
            CustomTextField(
                first: false,
                labelText: strUsername,
                prefixIcon: null,
                obscure: false,
                height: height_20,
                textInputType: TextInputType.text),
            CustomText(
                text: strPassword,
                color1: AppColors.black,
                fontWeight: fontWeight500,
                fontSize: font_13,
                height: height_8,
            ),
            CustomTextField(
                first: false,
                labelText: strPassword,
                prefixIcon: null,
                suffixIcon: IconButton(
                  onPressed: () {
                    print('Password Icon');
                  },
                  icon: Icon(Icons.remove_red_eye),
                  color: AppColors.darkGreyColor,
                ),
                obscure: true,
                lines: 1,
                height: height_10,
                textInputType: TextInputType.text),
            Align(
              alignment: Alignment.topRight,
              child: CustomTextButton(
                  text: strForgetPassword,
                  color: AppColors.orange,
                  fontWeight: fontWeight500,
                  font: font_15,
                  onPress: () {
                    Get.to(ForgotPassword());
                    print('Forget Password');
                  }),
            ),
            CustomDivider(
              height: height_80,
            ),
            CustomButton(
                text: strLogin,
                color: AppColors.white,
                fontWeight: fontWeight500,
                font: font_15,
                onPress: () {
                  print('Login Button');
                }),
            CustomDivider(
              height: height_100,
            ),
          ],
        ),
      ),
    );
  }
}
