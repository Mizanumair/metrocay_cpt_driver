import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/components/custom_listtile.dart';
import 'package:metrocay_cpt_user/src/components/custom_text.dart';
import 'package:metrocay_cpt_user/src/components/trip_chip.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/font_weight.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';
import 'package:metrocay_cpt_user/src/core/constants/strings.dart';

class Trip extends StatelessWidget {
  const Trip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
            text: strMyTrip,
            color1: AppColors.black,
            fontWeight: fontWeight700,
            fontSize: font_16),
        elevation: 1,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_10),
          children: [
            CustomDivider(
              height: height_10,
            ),
            CustomText(
                text: '8 June 2023',
                color1: AppColors.black,
                fontWeight: fontWeight400,
                fontSize: font_20),

            CustomDivider(
              height: height_20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: margin_10),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  border:
                      Border.all(color: AppColors.greyColor.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(radius_15),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greyColor.withOpacity(.3),
                      spreadRadius: 3,
                      blurRadius: 4,
                    )
                  ]),
              child: Column(
                children: [
                  TripChip(
                    firstText: 'A-textHost',
                    secondText: 'B-HEST',
                    passenger: '\$23.54',
                    time: '4 MIN',
                    status: true,
                  ),
                  CustomButton(
                    width: width_250,
                      text: 'Complete',
                      color: AppColors.green,
                      fontWeight: fontWeight500,
                      font: font_15,
                    buttonColor: AppColors.green.withOpacity(.2),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
