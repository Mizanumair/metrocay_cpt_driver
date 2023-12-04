import 'package:flutter/material.dart';

import '../../../components/chip.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class PayComplete extends StatelessWidget {
  const PayComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        maxChildSize: 1,
        minChildSize: .1,
        initialChildSize: .98,
        builder: (BuildContext context, ScrollController scrollController) {
          return ListView(
            controller: scrollController,
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
              CustomDivider(
                height: height_25,
              ),
              CustomButton(
                text: 'OKAY',
                color: AppColors.white,
                fontWeight: fontWeight600,
                font: font_16,
                onPress: () {},
              )
            ],
          );
        }
    );
  }
}
