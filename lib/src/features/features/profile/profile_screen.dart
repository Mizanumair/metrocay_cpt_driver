import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/components/custom_listtile.dart';
import 'package:metrocay_cpt_user/src/components/custom_text.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/font_weight.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';
import 'package:metrocay_cpt_user/src/core/constants/strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomDivider(
              height: height_40,
            ),
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
            CustomDivider(
              height: height_10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: 'Mizan Umair',
                    color1: AppColors.black,
                    fontWeight: fontWeight700,
                    fontSize: font_22),
                CustomText(
                    text: '@eplisic',
                    color1: AppColors.greyColor,
                    fontWeight: fontWeight400,
                    fontSize: font_16),
              ],
            ),
            CustomDivider(
              height: height_15,
            ),
            CustomListTile(
              title: strFullName,
              subTitle: 'Mizan Umair',
              image: ImgAssets.userIconProfile,
            ),
            CustomListTile(
              title: strEmail,
              subTitle: 'heyo@gmail.com',
              image: ImgAssets.mailIcon,
            ),
            CustomListTile(
              title: strAddress,
              subTitle: 'Al-Rashid St.ArjanP.O. Box',
              image: ImgAssets.pointIcon,
            ),
            CustomListTile(
              title: strPhoneNumber,
              subTitle: '+91 2947 7562 89',
              image: ImgAssets.phoneIcon,
            ),
            CustomDivider(
              height: height_80,
            ),
            CustomButton(
              buttonRadius: true,
                buttonColor: AppColors.red,
                text: strLogout,
                color: AppColors.red,
                fontWeight: fontWeight600,
                font: font_15,
              onPress: (){},
            )
          ],
        ),
      ),
    );
  }
}
