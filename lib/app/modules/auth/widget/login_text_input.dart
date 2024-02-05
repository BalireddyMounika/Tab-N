import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/utils/helper/text_field_wrapper.dart';

import '../../../../utils/app_utils.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_colors.dart';

class LoginTextInput extends StatelessWidget {
  final bool? isSuffix;
  final String hintText;
  final onTapSufix;
  final TextFieldWrapper controller;
  final validator;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;
  final bool? obscureText;
  final String obscuringCharacter;
  final suffixIcon;
  const LoginTextInput({
    Key? key,
    this.suffixIcon,
    this.isSuffix,
    this.onTapSufix,
    required this.hintText,
    required this.controller,
    this.validator,
    this.keyboardType,
    this.focusNode,
    this.obscureText,
    this.obscuringCharacter = '*',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: TextFormField(
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        obscuringCharacter: obscuringCharacter,
        keyboardType: keyboardType,
        validator: validator,
        controller: controller.controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          suffixIcon: isSuffix ?? false
              ? GestureDetector(
                  onTap: onTapSufix,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColors.baseColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Icon(
                      Icons.qr_code_scanner,
                      size: AppUtils.isTab() ? 36 : 30,
                      color: AppColors.white,
                    ).paddingAll(Dimens.gapX1),
                  ),
                )
              : suffixIcon,
          // SizedBox(
          //         height: AppUtils.isTab() ? 56 : 46,
          //       ),
          suffixIconConstraints: const BoxConstraints(),
          filled: true,
          helperText: '',
          fillColor: Colors.white,
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
