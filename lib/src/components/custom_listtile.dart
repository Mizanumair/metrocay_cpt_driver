import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_text.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:metrocay_cpt_user/src/core/constants/dimensions.dart';
import 'package:metrocay_cpt_user/src/core/constants/font_weight.dart';
import 'package:metrocay_cpt_user/src/core/constants/palette.dart';
import 'package:metrocay_cpt_user/src/core/constants/strings.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
          radius: radius_35,
          backgroundColor: AppColors.orange.withOpacity(.15),
          child: Image.asset(
            image,
            height: height_16,
          )),
      title: CustomText(
          text: title,
          color1: AppColors.greyColor,
          fontWeight: fontWeight400,
          fontSize: font_13),
      subtitle: CustomText(
          text: subTitle,
          color1: AppColors.black,
          fontWeight: fontWeight600,
          fontSize: font_15),
    );
  }
}
