import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:metrocay_cpt_user/src/components/custom_button.dart';
import 'package:metrocay_cpt_user/src/components/custom_divider.dart';
import 'package:metrocay_cpt_user/src/components/passenger_request.dart';
import 'package:metrocay_cpt_user/src/components/payment_received.dart';
import 'package:metrocay_cpt_user/src/core/constants/assets.dart';
import 'package:switcher_button/switcher_button.dart';
import '../../../components/chip.dart';
import '../../../components/custom_text.dart';
import '../../../components/trip_chip.dart';
import '../../../core/constants/dimensions.dart';
import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';
import '../../../core/constants/strings.dart';

class HomeCompleteTrip extends StatefulWidget {
  const HomeCompleteTrip({super.key});

  @override
  State<HomeCompleteTrip> createState() => _HomeCompleteTripState();
}

class _HomeCompleteTripState extends State<HomeCompleteTrip> {
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
                  child: Row(
                    children: [
                      CustomDivider(
                        width: width_20,
                      ),
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
                      CustomText(
                          text: '(kelr-fetro)',
                          color1: AppColors.black,
                          fontWeight: fontWeight400,
                          fontSize: font_16),
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
                        text: strCompTrip,
                        color: AppColors.white,
                        fontWeight: fontWeight600,
                        font: font_14,
                        buttonColor: AppColors.orange,
                        onPress: () {
                          // Navigator.pop(context);
                          _newPassengerRequest(
                            context,
                            firstText: 'I-uTr',
                            secondText: 'O-YrT',
                            passengerName: 'Henri',
                            driverName: 'Drek',
                            distance: '1.7KM',
                            numOfRiders: '2',
                            approveButton: () {
                              Navigator.pop(context);
                              _paymentReceived(context,
                                  id: '#2232323',
                                  passengerName: 'Mizan Umair',
                                  busId: 'IO-3434343',
                                  date: '2 Oct 23',
                                  amountPaid: '\$34.54',
                                  driverName: 'Sam',
                                  numberRides: '2',
                                  okayTap: () {});
                            },
                            rejectButton: () {},
                          );
                        },
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }

  void _newPassengerRequest(
    BuildContext context, {
    required String firstText,
    required String secondText,
    required String passengerName,
    required String driverName,
    required String distance,
    required String numOfRiders,
    required Function() rejectButton,
    required Function() approveButton,
  }) {
    showModalBottomSheet(
        barrierColor: AppColors.orange.withOpacity(.5),
        context: context,
        builder: (BuildContext context) {
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: margin_10),
            children: [
              CustomDivider(
                height: height_20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                      text: strNewPass,
                      color1: AppColors.black,
                      fontWeight: fontWeight600,
                      fontSize: font_20),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: AppColors.black,
                      ))
                ],
              ),
              CustomDivider(
                height: height_20,
              ),
              PassengerReq(
                  passengerName: passengerName,
                  driverName: driverName,
                  distance: distance,
                  numOfRiders: numOfRiders,
                  firstText: firstText,
                  secondText: secondText),
              CustomDivider(
                height: height_40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    width: width_120,
                    text: 'REJECT',
                    color: AppColors.white,
                    fontWeight: fontWeight600,
                    font: font_14,
                    buttonColor: AppColors.red,
                    onPress: rejectButton,
                  ),
                  CustomButton(
                    width: width_120,
                    text: 'APPROVE',
                    color: AppColors.white,
                    fontWeight: fontWeight600,
                    font: font_14,
                    buttonColor: AppColors.green,
                    onPress: approveButton,
                  ),
                ],
              )
            ],
          );
        });
  }

  void _paymentReceived(
    BuildContext context, {
    required String id,
    required String passengerName,
    required String busId,
    required String date,
    required String amountPaid,
    required String driverName,
    required String numberRides,
    required Function() okayTap,
  }) {
    showModalBottomSheet(
        isDismissible: true,
        enableDrag: true,
        barrierColor: AppColors.orange.withOpacity(.5),
        context: context,
        builder: (
          BuildContext context,
        ) {
          return PayRec(
              id: id,
              passengerName: passengerName,
              busId: busId,
              date: date,
              amountPaid: amountPaid,
              driverName: driverName,
              numberRides: numberRides,
              okayTap: okayTap);
        });
  }
}
