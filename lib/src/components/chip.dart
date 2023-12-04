import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';

import '../core/constants/font_weight.dart';
import '../core/constants/strings.dart';
import 'custom_text.dart';

class Chips extends StatelessWidget {
  const Chips({Key? key,
    required this.id,
    required this.passengerName,
    required this.busId,
    required this.date,
    required this.amountPaid,
    required this.driverName,
    required this.numberRides,
  }) : super(key: key);

  final String id;
  final String passengerName;
  final String busId;
  final String date;
  final String amountPaid;
  final String driverName;
  final String numberRides;
  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 400,
      padding: EdgeInsets.symmetric(vertical: margin_15, horizontal: margin_20),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius_20),
        border: Border.all(color: AppColors.greyColor.withOpacity(.6))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: id,
              color1: AppColors.black,
              fontWeight: fontWeight500,
              fontSize: font_22),
          CustomDivider(
            height: height_15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: strPsnName,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_13),
                  SizedBox(
                    width: 150,
                    child: CustomText(
                        text: passengerName,
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_16),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: strBsId,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_13),
                  SizedBox(
                    width: 150,
                    child: CustomText(
                        text: busId,
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_16),
                  ),
                ],
              ),
            ],
          ),
          CustomDivider(
            height: height_15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: strDate,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_13),
                  SizedBox(
                    width: 150,
                    child: CustomText(
                        text: date,
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_16),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: strAmountPaid,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_13),
                  SizedBox(
                    width: 150,
                    child: CustomText(
                        text: amountPaid,
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_16),
                  ),
                ],
              ),
            ],
          ),
          CustomDivider(
            height: height_15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: strDrvName,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_13),
                  SizedBox(
                    width: 150,
                    child: CustomText(
                        text: driverName,
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_16),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: strNoOfRide,
                      color1: AppColors.greyColor,
                      fontWeight: fontWeight400,
                      fontSize: font_13),
                  SizedBox(
                    width: 150,
                    child: CustomText(
                        text: numberRides,
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_16),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
