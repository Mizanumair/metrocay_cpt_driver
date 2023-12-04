import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:switcher_button/switcher_button.dart';
import '../../../components/custom_text.dart';
import '../../../components/trip_chip.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
                      ),
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
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,

                      hint: Row(
                        children: [
                           CustomDivider(
                            width: width_10,
                          ),
                          Expanded(
                            child: Text(
                              'Passenger',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: fontWeight600,
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
          DraggableScrollableSheet(
              maxChildSize: 1,
              minChildSize: .1,
              initialChildSize: .4,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  padding: EdgeInsets.only(top: 20),
                  color: AppColors.white,
                  child: ListView(
                    controller: scrollController,
                    padding: EdgeInsets.symmetric(horizontal: margin_10),
                    children: [
                      TripChip(
                        firstText: 'A-textHost',
                        secondText: 'B-HEST',
                        passenger: '2/10',
                        time: '4 MIN',
                        status: false,
                        button: true,
                      ),
                      CustomButton(
                        text: strStartTrip,
                        color: AppColors.white,
                        fontWeight: fontWeight600,
                        font: font_14,
                        buttonColor: AppColors.green,
                        onPress: () {},
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}

