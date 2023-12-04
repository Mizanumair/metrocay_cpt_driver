import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class CustomRidePayNow extends StatefulWidget {
  const CustomRidePayNow({super.key});

  @override
  State<CustomRidePayNow> createState() => _CustomRidePayNowState();
}

class _CustomRidePayNowState extends State<CustomRidePayNow> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(ImgAssets.circle),
            title: CustomText(
              text: 'P-AMB',
              color1: AppColors.black,
              fontWeight: fontWeight500,
              fontSize: font_17,
              overflowBar: TextOverflow.ellipsis,
            ),
            trailing: Icon(Icons.keyboard_arrow_down),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImgAssets.line),
              CustomDivider(
                width: width_42,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * .75,
                color: AppColors.greyColor.withOpacity(.4),
              ),
            ],
          ),
          ListTile(
            leading: Image.asset(
              ImgAssets.oval,
              height: height_20,
            ),
            title: CustomText(
              text: 'P-AMB',
              color1: AppColors.black,
              fontWeight: fontWeight500,
              fontSize: font_17,
            ),
            trailing: Icon(Icons.keyboard_arrow_down),
          ),
          Divider(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: ListTile(
              leading: Image.asset(
                ImgAssets.transBus2Icon,
                height: height_35,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: strBusId,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_15,
                      ),
                      CustomText(
                        text: 'P-AMB',
                        color1: AppColors.black,
                        fontWeight: fontWeight500,
                        fontSize: font_17,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: strDriverName,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_15,
                      ),
                      CustomText(
                        text: 'P-AMB',
                        color1: AppColors.black,
                        fontWeight: fontWeight500,
                        fontSize: font_17,
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
            padding: EdgeInsets.only(left: 15.0, right: 20),
            child: ListTile(
              leading: Image.asset(
                ImgAssets.user2,
                height: height_40,
              ),
              title: Row(
                children: [
                  CustomDivider(
                    width: width_5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: strPassengerId,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_15,
                      ),
                      CustomText(
                        text: 'P-AMB',
                        color1: AppColors.black,
                        fontWeight: fontWeight500,
                        fontSize: font_17,
                      ),
                    ],
                  ),
                  CustomDivider(
                    width: width_40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: strOnlyName,
                        color1: AppColors.greyColor,
                        fontWeight: fontWeight500,
                        fontSize: font_15,
                      ),
                      CustomText(
                        text: 'P-AMB',
                        color1: AppColors.black,
                        fontWeight: fontWeight500,
                        fontSize: font_17,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          CustomDivider(
            height: height_10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: strDistance,
                    color1: AppColors.greyColor,
                    fontWeight: fontWeight500,
                    fontSize: font_15,
                  ),
                  CustomText(
                    text: '1.2KM',
                    color1: AppColors.black,
                    fontWeight: fontWeight600,
                    fontSize: font_17,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: strRideTime,
                    color1: AppColors.greyColor,
                    fontWeight: fontWeight500,
                    fontSize: font_15,
                  ),
                  CustomText(
                    text: '20Mins',
                    color1: AppColors.black,
                    fontWeight: fontWeight600,
                    fontSize: font_17,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: strNumOfRiders,
                    color1: AppColors.greyColor,
                    fontWeight: fontWeight500,
                    fontSize: font_15,
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
                        text: '\$206.78',
                        color1: AppColors.black,
                        fontWeight: fontWeight600,
                        fontSize: font_12),
                  ),
                ],
              ),
            ],
          ),
          CustomDivider(
            height: height_40,
          ),
          CustomText(
              text: 'Total : \$230.67',
              color1: AppColors.black,
              fontWeight: fontWeight600,
              fontSize: font_20),
          CustomDivider(
            height: height_30,
          ),
          CustomButton(
              width: width_270,
              height: 40,
              text: strReqARide,
              color: AppColors.green,
              buttonColor: AppColors.green.withOpacity(.2),
              fontWeight: fontWeight600,
              font: font_13,
              ),
          CustomDivider(
            height: height_10,
          ),
          CustomButton(
              width: width_270,
              text: strReqARide,
              color: AppColors.white,
              fontWeight: fontWeight600,
              font: font_15,
              onPress: () {}),

          CustomDivider(
            height: height_40,
          ),
        ],
      ),
    );
  }
}
