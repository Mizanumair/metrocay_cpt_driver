import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/components/custom_text.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/font_weight.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';
import 'package:metrocay_cpt_user/src/core/constants/strings.dart';
import 'package:metrocay_cpt_user/src/features/features/ride/stop_request_ride.dart';

class CustomReqRidePayment extends StatefulWidget {
  const CustomReqRidePayment({super.key});

  @override
  State<CustomReqRidePayment> createState() => _CustomReqRidePaymentState();
}

class _CustomReqRidePaymentState extends State<CustomReqRidePayment> {
  int selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: margin_20),
      children: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            CustomText(
              text: 'Hey This Is Mizan Umair',
              color1: AppColors.black,
              fontWeight: fontWeight600,
              fontSize: font_16,
            ),
          ],
        ),
        CustomButton(
            width: width_200,
            height: 40,
            text: 'BUS ARRIVED',
            color: AppColors.white,
            buttonColor: AppColors.green,
            fontWeight: fontWeight600,
            font: font_13),
        CustomDivider(
          height: height_10,
        ),
        Container(
          width: 350,
          height: 60,
          decoration: BoxDecoration(
              color: AppColors.transparent,
              border: Border.all(color: AppColors.greyColor),
              borderRadius: BorderRadius.circular(radius_50)),
          child: Row(
            children: [
              Radio(
                value: 1,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as int;
                  });
                },
                // fillColor: MaterialStatePropertyAll(AppColors.greyColor),
                focusColor: AppColors.orange,
                activeColor:
                    selectedValue == 1 ? AppColors.orange : AppColors.greyColor,
              ),
              Image.asset(
                ImgAssets.quickPay,
                width: width_80,
              ),
            ],
          ),
        ),
        CustomDivider(
          height: height_20,
        ),
        Container(
          width: 350,
          height: 60,
          decoration: BoxDecoration(
              color: AppColors.transparent,
              border: Border.all(color: AppColors.greyColor),
              borderRadius: BorderRadius.circular(radius_50)),
          child: Row(
            children: [
              Radio(
                value: 2,
                groupValue: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as int;
                  });
                },
                // fillColor: MaterialStatePropertyAll(AppColors.greyColor),
                activeColor:
                    selectedValue == 2 ? AppColors.orange : AppColors.greyColor,
              ),
              Image.asset(
                ImgAssets.metroCard,
                width: width_80,
              ),
            ],
          ),
        ),
        CustomDivider(
          height: height_40,
        ),
        CustomButton(
          width: width_200,
          text: strContinue,
          color: AppColors.white,
          fontWeight: fontWeight600,
          font: font_16,
          onPress: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StopRequest(),
                ));
          },
        )
      ],
    );
  }
}
