import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/themes/app_colors.dart';

class CommonContainer extends StatelessWidget {
  final Widget child;
  const CommonContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(blurRadius: 15, color: AppColors.greyColor),
        ],
      ),
      child: child,
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
