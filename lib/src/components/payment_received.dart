import 'package:flutter/material.dart';
import '../core/constants/assets.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import '../core/constants/strings.dart';
import 'chip.dart';
import 'custom_button.dart';
import 'custom_divider.dart';
import 'custom_text.dart';

class PayRec extends StatelessWidget {
  const PayRec({
    Key? key,
    required this.id,
    required this.passengerName,
    required this.busId,
    required this.date,
    required this.amountPaid,
    required this.driverName,
    required this.numberRides,
    required this.okayTap,
  }) : super(key: key);

  final String id;
  final String passengerName;
  final String busId;
  final String date;
  final String amountPaid;
  final String driverName;
  final String numberRides;
  final Function() okayTap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: margin_15),
      children: [
        Column(
          children: [
            CustomDivider(
              height: height_5,
            ),
            Image.asset(
              ImgAssets.successIcon,
              height: height_50,
            ),
            CustomDivider(
              height: height_5,
            ),
            CustomText(
                text: 'Payment Received',
                color1: AppColors.black,
                fontWeight: fontWeight600,
                fontSize: font_20),
            CustomDivider(
              height: height_5,
            ),
            CustomText(
              text: strBookingInfoSend,
              color1: AppColors.greyColor,
              fontWeight: fontWeight500,
              fontSize: font_12,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        CustomDivider(
          height: height_25,
        ),
        Chips(
            id: id,
            passengerName: passengerName,
            busId: busId,
            date: date,
            amountPaid: amountPaid,
            driverName: driverName,
            numberRides: numberRides),
        CustomDivider(
          height: height_25,
        ),
        CustomButton(
          text: 'OKAY',
          color: AppColors.white,
          fontWeight: fontWeight600,
          font: font_16,
          onPress: okayTap,
        )
      ],
    );
  }
}
