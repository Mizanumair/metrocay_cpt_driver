import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';

import '../core/constants/assets.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/strings.dart';
import 'custom_divider.dart';
import 'custom_text.dart';

class TripChip extends StatelessWidget {
  const TripChip({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.passenger,
    required this.time,
    required this.status,  this.button,
  }) : super(key: key);

  final String firstText;
  final String secondText;
  final String passenger;
  final String time;
  final bool status;
  final bool? button;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Row(
           children: [
             CustomDivider(
               width: width_12,
             ),
             Image.asset(ImgAssets.circle),
             CustomDivider(
               width: width_20,
             ),
             CustomText(
               text: firstText,
               color1: AppColors.black,
               fontWeight: fontWeight500,
               fontSize: font_17,
               overflowBar: TextOverflow.ellipsis,
             ),
           ],
         ),
        Row(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomDivider(
              width: width_20,
            ),
            Image.asset(ImgAssets.line),
            CustomDivider(
              width: width_20,
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width * .75,
              color: AppColors.greyColor.withOpacity(.4),
            ),
          ],
        ),
        Row(
          children: [
            CustomDivider(
              width: width_12,
            ),
            Image.asset(
              ImgAssets.oval,
              height: height_20,
            ),
            CustomDivider(
              width: width_20,
            ),
            CustomText(
              text: secondText,
              color1: AppColors.black,
              fontWeight: fontWeight500,
              fontSize: font_17,
            ),
          ],
        ),
        Divider(
          height: 50,
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              ImgAssets.blackBus,
              height: height_33,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'TOTAL PASSENGERS',
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_13,
                ),
                Container(
                  width: 120,
                  child: CustomText(
                    text: passenger,
                    color1: AppColors.black,
                    fontWeight: fontWeight600,
                    fontSize: font_17,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'TIME',
                  color1: AppColors.greyColor,
                  fontWeight: fontWeight500,
                  fontSize: font_13,
                ),
                Container(
                  width: 80,
                  child: CustomText(
                    text: time,
                    color1: AppColors.black,
                    fontWeight: fontWeight600,
                    fontSize: font_17,
                  ),
                ),
              ],
            )
          ],
        ),
        CustomDivider(
          height: height_30,
        ),
       // button == true? Container(): CustomButton(
       //    width: width_300,
       //    text: status==true?'COMPLETED':'CANCELLED',
       //    color: status==true? AppColors.green : AppColors.red,
       //    fontWeight: fontWeight600,
       //    font: font_16,
       //    height: 50,
       //    buttonColor: status==true? AppColors.green.withOpacity(.15):AppColors.red.withOpacity(.15),
       //  )
      ],
    );
  }
}
