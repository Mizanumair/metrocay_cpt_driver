import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_transbus.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../components/custom_text_button.dart';
import '../../../components/custom_textfield.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
                        text: strForgotPassword,
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_25),
                    CustomText(
                        text: strEnterNewPassword,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight400,
                        fontSize: font_14),
                  ],
                )
            ),

            CustomText(
                text: strPassword,
                color1: AppColors.black,
                fontWeight: fontWeight500,
                fontSize: font_13,
                height: height_8
            ),
            CustomTextField(
                first: false,
                labelText: strPassword,
                prefixIcon: null,
                lines: 1,
                obscure: true,
                height: height_20,
                textInputType: TextInputType.text),
            CustomText(
              text: strConfirmPassword,
              color1: AppColors.black,
              fontWeight: fontWeight500,
              fontSize: font_13,
              height: height_8,
            ),
            CustomTextField(
                first: false,
                labelText: strConfirmPassword,
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
            CustomDivider(
              height: height_80,
            ),
            CustomButton(
                text: strCreate,
                color: AppColors.white,
                fontWeight: fontWeight500,
                font: font_15,
                onPress: () {
                  print('Login Button');
                }),
          ],
        ),
      ),
    );
  }
}
