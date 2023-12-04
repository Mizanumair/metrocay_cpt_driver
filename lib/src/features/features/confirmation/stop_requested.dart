import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/strings.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../components/passenger_request.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';

class StopRequested extends StatelessWidget {
  const StopRequested({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: margin_20),
          children: [
            CustomDivider(
              height: height_100,
            ),
            Image.asset(
              ImgAssets.requestIcon,
              height: height_100,
            ),
            CustomDivider(
              height: height_15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomText(
                    text: strStopReq,
                    color1: AppColors.black,
                    fontWeight: fontWeight600,
                    fontSize: font_25),
                CustomDivider(
                  height: height_20,
                ),
                Container(
                  //height: 370,
                  // width: 300,
                  padding: EdgeInsets.symmetric(vertical: margin_10),
                  decoration: BoxDecoration(
                      color: AppColors.orange.withOpacity(.2),
                      borderRadius: BorderRadius.circular(radius_15)),
                  child: PassengerReq(
                      passengerName: 'Mizan Umair',
                      driverName: 'driverName',
                      distance: '2Km',
                      numOfRiders: '2',
                      firstText: 'firstText',
                      secondText: 'secondText'),
                )
              ],
            ),
            CustomDivider(
              height: height_40,
            ),
            CustomButton(
                text: strContinue,
                color: AppColors.white,
                buttonColor: AppColors.orange,
                fontWeight: fontWeight500,
                font: font_15),
          ],
        ),
      ),
    );
  }
}
