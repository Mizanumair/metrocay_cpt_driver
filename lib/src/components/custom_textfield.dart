import 'package:flutter/material.dart';
import '../core/constants/dimensions.dart';
import '../core/constants/font_weight.dart';
import '../core/constants/palette.dart';
import 'custom_divider.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscure,
    required this.height,
    required this.textInputType,
    this.controller,
    this.onChanged,
    this.initialValue,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.showCursor,
    this.lines,
    this.first,
    this.hintText,
  }) : super(key: key);

  final int? lines;
  final String labelText;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final double height;
  final TextInputType textInputType;
  final Function(String)? onChanged;
  final Function()? onTap;
  String? Function(String?)? validator;
  final String? initialValue;
  final String? hintText;
  final bool obscure;
  final bool readOnly;
  final bool? showCursor;
  final bool? first;

  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        first == true
            ? TextFormField(
                maxLines: lines,
                keyboardType: textInputType,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: AppColors.greyColor,
                initialValue: initialValue,
                onChanged: onChanged,
                showCursor: showCursor,
                controller: controller,
                obscureText: obscure,
                validator: validator,
                style: TextStyle(
                    color: AppColors.greyColor,
                    fontSize: font_12,
                    fontFamily: 'Metropolis',
                    fontWeight: fontWeight500),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.greyColor.withOpacity(.1),
                  hintText: labelText,
                  hintStyle: TextStyle(
                      fontSize: font_12,
                      fontFamily: 'Metropolis',
                      fontWeight: fontWeight500),
                  prefixIcon: prefixIcon,
                  prefixIconColor: AppColors.greyColor,
                  suffixIcon: suffixIcon,
                  suffixIconColor: AppColors.greyColor,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.transparent),
                      borderRadius: BorderRadius.circular(radius_10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.transparent),
                      borderRadius: BorderRadius.circular(radius_10)),
                ),
                onTap: onTap,
                readOnly: readOnly,
              )
            : TextFormField(
                maxLines: lines,
                keyboardType: textInputType,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                cursorColor: AppColors.greyColor,
                initialValue: initialValue,
                onChanged: onChanged,
                showCursor: showCursor,
                controller: controller,
                obscureText: obscure,
                validator: validator,
                style: TextStyle(
                    color: AppColors.darkGreyColor,
                    fontSize: font_13,
                    fontWeight: fontWeight400),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: margin_20, top: margin_35),
                  filled: true,
                  fillColor: AppColors.greyColor.withOpacity(.15),
                  hintText: hintText,
                  hintStyle: TextStyle(
                      color: AppColors.darkGreyColor,
                      fontSize: font_13,
                      fontFamily: 'Poppins',
                      fontWeight: fontWeight500),
                  labelText: labelText,
                  labelStyle: TextStyle(
                      color: AppColors.darkGreyColor,
                      fontSize: font_12,
                      fontFamily: 'Poppins',
                      fontWeight: fontWeight500),
                  prefixIcon: prefixIcon,
                  prefixIconColor: AppColors.darkGreyColor,
                  suffixIcon: suffixIcon,
                  suffixIconColor: AppColors.darkGreyColor,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius_50),
                      borderSide: BorderSide(color: AppColors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(radius_50),
                      borderSide: BorderSide(color: AppColors.transparent)),
                ),
                onTap: onTap,
                readOnly: readOnly,
              ),
        CustomDivider(
          height: height,
          isDivider: false,
        ),
      ],
    );
  }
}


class EditField extends StatelessWidget {
   EditField({
    Key? key,
     this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.obscure,
    required this.height,
    required this.textInputType,
    this.controller,
    this.onChanged,
    this.initialValue,
    this.onTap,
    this.validator,
    this.readOnly = false,
    this.showCursor,
    this.lines,
    this.first,
    this.hintText,
  }) : super(key: key);

  final int? lines;
  final String? labelText;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final double height;
  final TextInputType textInputType;
  final Function(String)? onChanged;
  final Function()? onTap;
  String? Function(String?)? validator;
  final String? initialValue;
  final String? hintText;
  final bool obscure;
  final bool readOnly;
  final bool? showCursor;
  final bool? first;

  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLines: lines,
          keyboardType: textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: AppColors.greyColor,
          initialValue: initialValue,
          onChanged: onChanged,
          showCursor: showCursor,
          controller: controller,
          obscureText: obscure,
          validator: validator,
          style: TextStyle(
              color: AppColors.black,
              fontSize: font_18,
              fontFamily: 'Metropolis',
              fontWeight: fontWeight600),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20, ),
            filled: true,
            fillColor: AppColors.orange.withOpacity(.15),
            hintText: labelText,
            hintStyle: TextStyle(
                fontSize: font_12,
                fontFamily: 'Metropolis',
                fontWeight: fontWeight500),
            prefixIcon: prefixIcon,
            prefixIconColor: AppColors.greyColor,
            suffixIcon: suffixIcon,
            suffixIconColor: AppColors.greyColor,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.transparent),
                borderRadius: BorderRadius.circular(radius_40)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.transparent),
                borderRadius: BorderRadius.circular(radius_40)),
          ),
          onTap: onTap,
          readOnly: readOnly,
        ),
        SizedBox(
          height: height,
        ),
      ],
    );
  }
}
