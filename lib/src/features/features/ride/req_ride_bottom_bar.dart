import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:metrocay_cpt_user/src/core/constants/strings.dart';
import 'package:metrocay_cpt_user/src/features/features/ride/req_ride_payment.dart';
import 'package:metrocay_cpt_user/src/features/features/ride/stop_request_ride.dart';

import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../components/custom_text.dart';

class CustomReqBottomBar extends StatefulWidget {
  const CustomReqBottomBar({super.key});

  @override
  State<CustomReqBottomBar> createState() => _CustomReqBottomBarState();
}

class _CustomReqBottomBarState extends State<CustomReqBottomBar> {
  final List<String> items = [
    'P-EM',
    'TRU',
    'FEKI',
    'KOIL',
    'SOON',
    'HEY',
    'REQ',
    'FREE',
  ];
  String? selectedValue;
  String? selectedValue2;
  String? selectedValue3;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(ImgAssets.circle),
            title: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Passenger',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: fontWeight500,
                          color: AppColors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: fontWeight500,
                              color: AppColors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedValue2,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue2 = value;
                  });
                },
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                  ),
                  iconSize: 14,
                  iconEnabledColor: AppColors.black,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.white,
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all<double>(6),
                    thumbVisibility: MaterialStateProperty.all<bool>(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
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
            title: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Passenger',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: fontWeight500,
                          color: AppColors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: fontWeight500,
                              color: AppColors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedValue3,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue3 = value;
                  });
                },
                iconStyleData: IconStyleData(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    size: 30,
                  ),
                  iconSize: 14,
                  iconEnabledColor: AppColors.black,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 800,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColors.white,
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all<double>(6),
                    thumbVisibility: MaterialStateProperty.all<bool>(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
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
                  DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Passenger',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      buttonStyleData: ButtonStyleData(
                        height: 50,
                        width: width_100,
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.greyColor.withOpacity(.2),
                        ),
                        elevation: 0,
                      ),
                      iconStyleData: const IconStyleData(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                        iconSize: 14,
                        iconEnabledColor: AppColors.black,
                        iconDisabledColor: Colors.grey,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        maxHeight: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.white,
                        ),
                        offset: const Offset(-20, 0),
                        scrollbarTheme: ScrollbarThemeData(
                          radius: const Radius.circular(40),
                          thickness: MaterialStateProperty.all<double>(6),
                          thumbVisibility:
                              MaterialStateProperty.all<bool>(true),
                        ),
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                        padding: EdgeInsets.only(left: 14, right: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomDivider(
            height: height_20,
          ),
          CustomButton(
              width: width_250,
              text: strReqARide,
              color: AppColors.white,
              fontWeight: fontWeight600,
              font: font_15,
              onPress: () {
                return showModalBottomSheet(
                  barrierColor: AppColors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return StopRequest();
                    });
              }),
          CustomDivider(
            height: height_40,
          ),
        ],
      ),
    );
  }
}
