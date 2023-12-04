import 'package:flutter/material.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_divider.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class CustomRideRequestMap extends StatelessWidget {
  const CustomRideRequestMap({super.key});

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
          Positioned(
              top: MediaQuery.of(context).size.height * .71,
               left: MediaQuery.of(context).size.width*.78,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
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
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
