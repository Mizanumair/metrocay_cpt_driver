import 'package:flutter/material.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class StopRequest extends StatefulWidget {
  const StopRequest({super.key});

  @override
  State<StopRequest> createState() => _StopRequestState();
}

class _StopRequestState extends State<StopRequest> {
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
          ),///////////
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
          CustomDivider(
            height: height_10,
          ),
          CustomButton(
              width: width_270,
              text: strStopRequest,
              color: AppColors.white,
              fontWeight: fontWeight500,
              buttonColor: AppColors.red,
              font: font_16,
              onPress: () {
                // Close the first bottom sheet
                Navigator.pop(context);
                // Show the second bottom sheet
                _stepRequest(context);
              }),
          CustomDivider(
            height: height_40,
          ),
        ],
      ),
    );
  }

  void _stepRequest(BuildContext context) {
    showModalBottomSheet(
      barrierColor: AppColors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(radius_20),
                  topLeft: Radius.circular(radius_20))),
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_15),
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDivider(
                height: height_10,
              ),
              CustomText(
                  text: strAreYouSure,
                  color1: AppColors.black,
                  fontWeight: fontWeight500,
                  fontSize: font_14),
              CustomDivider(
                height: height_20,
              ),
              Row(
                children: [
                  Image.asset(
                    ImgAssets.oval,
                    height: height_25,
                  ),
                  CustomDivider(
                    width: width_10,
                  ),
                  SizedBox(
                    width: 300,
                    child: CustomText(
                        text: 'Hey- This is the address notedown',
                        color1: AppColors.black,
                        fontWeight: fontWeight400,
                        fontSize: font_15),
                  ),
                ],
              ),
              CustomDivider(
                height: height_20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    buttonRadius: true,
                    width: width_150,
                    text: strCancel,
                    color: AppColors.black,
                    buttonColor: AppColors.greyColor,
                    fontWeight: fontWeight600,
                    font: font_15,
                    onPress: () {},
                  ),
                  CustomButton(
                    buttonRadius: false,
                    width: width_150,
                    text: strCancel,
                    color: AppColors.white,
                    buttonColor: AppColors.green,
                    fontWeight: fontWeight600,
                    font: font_15,
                    onPress: () {},
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
