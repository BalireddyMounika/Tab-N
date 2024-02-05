import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app/data/values/dimens.dart';
import '../app/themes/app_colors.dart';
import '../app/themes/app_styles.dart';

class CustomButtons extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool? isFilled;
  final double? radius;
  const CustomButtons(
      {Key? key,
      required this.text,
      required this.onTap,
      this.isFilled,
      this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: Dimens.screenHeightX20,
          decoration: BoxDecoration(
              color: isFilled ?? true ? AppColors.baseColor : null,
              border: Border.all(
                  color: isFilled ?? true
                      ? AppColors.baseColor
                      : AppColors.blackColor),
              borderRadius: BorderRadius.circular(radius ?? Dimens.radiusX2)),
          child: Text(
            text,
            style: AppStyles.tsBlackMedium18.copyWith(
                color:
                    isFilled ?? true ? AppColors.white : AppColors.blackColor),
          ).paddingSymmetric(horizontal: Dimens.paddingX4),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: GestureDetector(
            onTap: onTap,
            child: Container(
                alignment: Alignment.center,
                height: Dimens.screenHeightX20,
                width: Dimens.screenWidthX44,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.blackColor),
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  text,
                  style: AppStyles.tsBlackSemi24,
                ))));
  }
}
