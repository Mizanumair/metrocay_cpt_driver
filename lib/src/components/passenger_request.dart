import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants/assets.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import '../core/constants/strings.dart';
import 'custom_divider.dart';
import 'custom_text.dart';

class PassengerReq extends StatelessWidget {
  const PassengerReq({
    Key? key,
    required this.passengerName,
    required this.driverName,
    required this.distance,
    required this.numOfRiders,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  final String passengerName;
  final String driverName;
  final String distance;
  final String numOfRiders;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: height_200,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: ListTile(
              leading: Image.asset(
                ImgAssets.user2,
                height: height_30,
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: strPassengerId,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_11,
                      ),
                      SizedBox(
                        width: 80,
                        child: CustomText(
                          text: passengerName,
                          color1: AppColors.black,
                          fontWeight: fontWeight500,
                          fontSize: font_17,
                        ),
                      ),
                    ],
                  ),
                  CustomDivider(
                    width: width_45,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: strDriverName,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_11,
                      ),
                      SizedBox(
                        width: 80,
                        child: CustomText(
                          text: driverName,
                          color1: AppColors.black,
                          fontWeight: fontWeight500,
                          fontSize: font_17,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2, right: 20),
            child: ListTile(
              leading: Image.asset(
                ImgAssets.user2,
                height: height_30,
                color: AppColors.white,
              ),
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: strDistance,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_11,
                      ),
                      SizedBox(
                        width: 80,
                        child: CustomText(
                          text: distance,
                          color1: AppColors.black,
                          fontWeight: fontWeight600,
                          fontSize: font_17,
                        ),
                      ),
                    ],
                  ),
                  CustomDivider(
                    width: width_50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: strNumOfRiders,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_11,
                      ),
                      Container(
                        //height: 40,
                        padding: EdgeInsets.all(margin_10),
                        width: 80,
                        decoration: BoxDecoration(
                          color: AppColors.greyColor.withOpacity(.2),
                          borderRadius: BorderRadius.circular(radius_10),
                        ),
                        child: CustomText(
                            text: numOfRiders,
                            color1: AppColors.black,
                            fontWeight: fontWeight600,
                            fontSize: font_12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CustomDivider(
            height: height_10,
          ),
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
        ],
      ),
    );
  }
}
