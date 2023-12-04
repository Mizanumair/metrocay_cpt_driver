import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import '../../../components/custom_text.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';
import '../ride/req_ride_bottom_bar.dart';

class SelectBus extends StatefulWidget {
  const SelectBus({super.key});

  @override
  State<SelectBus> createState() => _SelectBusState();
}

class _SelectBusState extends State<SelectBus> {
  bool isBottomBarVisible = true;

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
          Visibility(
            visible: isBottomBarVisible,
            child: Padding(
              padding: EdgeInsets.only(top: margin_30),
              child: Container(
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
                      fontSize: font_20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * .61,
              // left: MediaQuery.of(context).size.width*.8,
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
                  CustomDivider(
                    height: height_35,
                  ),
                  CustomButton(
                      width: width_300,
                      text: strContinue,
                      color: AppColors.white,
                      fontWeight: fontWeight600,
                      font: font_15,
                      onPress: () {
                        isBottomBarVisible = !isBottomBarVisible;
                        setState(() {});
                        return  showModalBottomSheet(
                          context: context,
                          barrierColor: AppColors.transparent,
                          isDismissible: true,
                          isScrollControlled: true, // This property makes the sheet full height
                          builder: (BuildContext context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * 0.6, // Set the desired height
                              color: Colors.white, // Set the desired background color
                              child: DraggableScrollableSheet(
                                initialChildSize: .95, // Initial size set to 50% of the screen height
                                minChildSize: 0.1, // Minimum size set to 10% of the screen height
                                maxChildSize: 1,
                                builder: (BuildContext context,
                                    ScrollController scrollController) {
                                  return CustomReqBottomBar();
                                },
                              ),
                            );
                          },
                        );
                      }),
                ],
              )),
        ],
      ),
    );
  }
}
