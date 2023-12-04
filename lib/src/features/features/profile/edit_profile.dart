import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/components/custom_listtile.dart';
import 'package:metrocay_cpt_user/src/components/custom_text.dart';
import 'package:metrocay_cpt_user/src/components/custom_textfield.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/font_weight.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';
import 'package:metrocay_cpt_user/src/core/constants/strings.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: strProfile,
            color1: AppColors.black,
            fontWeight: fontWeight700,
            fontSize: font_18),
        actions: [
          IconButton(
            icon: Icon(
              Icons.edit,
              color: AppColors.orange,
            ),
            onPressed: () {
              // Handle search button press
              print('Search button pressed');
            },
          ),
        ],
        elevation: 1,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_15),
          children: [
            CustomDivider(
              height: height_40,
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                  radius: radius_60,
                  backgroundColor: AppColors.orange,
                  child: CircleAvatar(
                    radius: radius_55,
                    backgroundColor: AppColors.white,
                    child: CircleAvatar(
                      radius: radius_50,
                      backgroundColor: AppColors.orange,
                    ),
                  ),
                ),
                Positioned(
                  left: width_190,
                  top: height_80,
                    child: Image.asset(ImgAssets.camIcon, height: height_25,))
              ],
            ),
            CustomDivider(
              height: height_20,
            ),
            CustomText(
                text: strFullName,
                color1: AppColors.black,
                fontWeight: fontWeight500,
                fontSize: font_15,
            ),
            EditField(
                labelText: '',
                hintText: 'Mizan Umair',
                prefixIcon: null,
                obscure: false,
                height: height_20,
                textInputType: TextInputType.text),
            CustomText(
                text: strUsername,
                color1: AppColors.black,
                fontWeight: fontWeight500,
                fontSize: font_15),
            EditField(
                labelText: '',
                hintText: 'Mizan Umair',
                prefixIcon: null,
                obscure: false,
                height: height_20,
                textInputType: TextInputType.text),
            CustomText(
                text: strEmailId,
                color1: AppColors.black,
                fontWeight: fontWeight500,
                fontSize: font_15),
            EditField(
                labelText: '',
                hintText: 'Mizan Umair',
                prefixIcon: null,
                obscure: false,
                height: height_20,
                textInputType: TextInputType.text),
            CustomText(
                text: strPhoneNumber,
                color1: AppColors.black,
                fontWeight: fontWeight500,
                fontSize: font_15),
            EditField(
                labelText: '',
                hintText: 'Mizan Umair',
                prefixIcon: null,
                obscure: false,
                height: height_20,
                textInputType: TextInputType.text),
            CustomDivider(
              height: height_40,
            ),
            CustomButton(
              buttonRadius: false,
              buttonColor: AppColors.orange,
              text: strSave,
              color: AppColors.white,
              fontWeight: fontWeight600,
              font: font_15,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget editProfileContainer({
    required String title,
    required String subTitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            text: title,
            color1: AppColors.black,
            fontWeight: fontWeight500,
            fontSize: font_15),
        CustomDivider(
          height: height_5,
        ),
        CustomDivider(
          height: height_10,
        ),
      ],
    );
  }
}
