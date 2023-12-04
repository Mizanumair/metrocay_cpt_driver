import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/components/custom_text.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/font_weight.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';
import 'package:metrocay_cpt_user/src/core/constants/strings.dart';

class CustomTransBus extends StatelessWidget {
  const CustomTransBus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          ImgAssets.transBusIcon,
          height: height_40,
        ),
        CustomDivider(
          width: width_15,
        ),
        CustomText(
            text: strTransBus,
            color1: AppColors.black,
            fontWeight: fontWeight700,
            fontSize: font_28)
      ],
    );
  }
}
