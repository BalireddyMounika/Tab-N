import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';

class CommonBottomNavigationBar extends StatelessWidget {
  final Function onPrevious;
  final Function onNext;
  final bool isPreviewActive;
  final bool isNextActive;
  const CommonBottomNavigationBar(
      {Key? key,
      required this.onPrevious,
      required this.onNext,
      required this.isPreviewActive,
      required this.isNextActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: CustomButtons(
            isFilled: false,
            text: 'Previous',
            isEnable: isPreviewActive,
            onTap: () => onPrevious(),
          ),
        ),
        SizedBox(width: Dimens.gapX2),
        Expanded(
          child: CustomButtons(
            isEnable: isNextActive,
            text: 'Next',
            onTap: () => onNext(),
          ),
        ),
      ],
    ).paddingSymmetric(
        horizontal: Dimens.paddingX3, vertical: Dimens.paddingX1);
  }
}

class CustomButtons extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool? isFilled;
  final double? radius;
  final bool isEnable;
  const CustomButtons(
      {Key? key,
      required this.text,
      required this.onTap,
      this.isFilled,
      this.radius,
      required this.isEnable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: Dimens.screenHeightX20,
        decoration: BoxDecoration(
            color: isEnable
                ? isFilled ?? true
                    ? AppColors.baseColor
                    : null
                : AppColors.disableColor,
            border: Border.all(
                color: isEnable ? AppColors.baseColor : AppColors.disableColor),
            borderRadius: BorderRadius.circular(radius ?? Dimens.radiusX2)),
        child: Text(
          text,
          style: AppStyles.tsBlackMedium18.copyWith(
              color: isEnable
                  ? isFilled ?? true
                      ? AppColors.white
                      : AppColors.baseColor
                  : AppColors.white),
        ).paddingSymmetric(horizontal: Dimens.paddingX4),
      ),
    );
  }
}
