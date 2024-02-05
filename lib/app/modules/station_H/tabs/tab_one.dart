import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/dimens.dart';
import 'package:nivish/app/modules/station_H/controllers/station_h_controller.dart';
import 'package:nivish/app/modules/station_H/widget/lower_deciduous.dart';
import 'package:nivish/app/modules/station_H/widget/lower_permanent_teeth.dart';
import 'package:nivish/app/modules/station_H/widget/upper_deciduous.dart';
import 'package:nivish/app/modules/station_H/widget/upper_permanent_teeth.dart';
import 'package:nivish/app/themes/app_colors.dart';

class TabOne extends GetView<StationHController> {
  const TabOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(blurRadius: 15, color: AppColors.greyColor),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UpperPermanentWidget(),
          UpperDeciduousWidget(),
          LowerDeciduousWidget(),
          LowerPermanentWidget(),
        ],
      ).paddingSymmetric(vertical: Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
