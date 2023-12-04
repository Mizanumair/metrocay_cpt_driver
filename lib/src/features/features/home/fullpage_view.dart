import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../components/trip_chip.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class FullPageView extends StatelessWidget {
  const FullPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(ImgAssets.transBusIcon),
        title: CustomText(
            text: strTransBus,
            color1: AppColors.black,
            fontWeight: fontWeight700,
            fontSize: font_25),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            ImgAssets.map,
            width: width_355,
          ),
          Padding(
            padding: EdgeInsets.only(top: margin_30),
            child: Column(
              children: [
                Container(
                  height: height_55,
                  width: width_320,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(radius_12),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyColor.withOpacity(.5),
                          offset: Offset(0, 5),
                          blurRadius: 20,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomText(
                          text: strAvailability,
                          color1: AppColors.black,
                          fontWeight: fontWeight600,
                          fontSize: font_17),
                      CustomDivider(
                        width: width_60,
                      ),
                      Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(radius_30),
                            border:
                            Border.all(color: AppColors.orange, width: 2)),
                        child: SwitcherButton(
                          offColor: AppColors.white.withOpacity(1),
                          onColor: AppColors.orange,
                        ),
                      )
                    ],
                  ),
                ),
                CustomDivider(
                  height: height_10,
                ),
                Container(
                  height: height_55,
                  width: width_320,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(radius_12),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyColor.withOpacity(.5),
                          offset: Offset(0, 5),
                          blurRadius: 20,
                        ),
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImgAssets.userIcon,
                        height: height_25,
                      ),
                      CustomDivider(
                        width: width_10,
                      ),
                      CustomText(
                          text: 'P-AMB',
                          color1: AppColors.black,
                          fontWeight: fontWeight600,
                          fontSize: font_20),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * .4,
              left: MediaQuery.of(context).size.width * .8,
              child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.greyColor.withOpacity(.5),
                          offset: Offset(0, 5),
                          blurRadius: 20,
                        ),
                      ]),
                  child: Icon(
                    Icons.my_location_rounded,
                    size: 30,
                  ))),

        ],
      ),
    );
  }
}
