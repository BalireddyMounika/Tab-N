import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_A/controllers/section_a_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import 'package:nivish/app/themes/app_styles.dart';
import 'package:nivish/widgets/common_text.dart';

import '../../../data/values/dimens.dart';

class StationABmiView extends GetView<StationAController> {
  const StationABmiView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(blurRadius: 15, color: AppColors.greyColor)]),
      child: Get.width < 600
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CommonText(
                      text: "Calculated BMI",
                    ),
                    const SizedBox(height: Dimens.gapX2),
                    SvgPicture.asset(
                      AppImages.bmi,
                      width: Dimens.screenWidthXFourth,
                    ),
                    const SizedBox(height: Dimens.gapX1),
                    Text(
                      '${controller.gerCalculatedBMI().toStringAsFixed(2)} kg/m^2',
                      style: AppStyles.tsBlackBold18,
                    ),
                  ],
                ),
                const SizedBox(height: Dimens.gapX4),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CommonText(
                      text: "Calculated",
                    ),
                    const CommonText(
                      text: "Abdominal Girth to Height",
                    ),
                    const SizedBox(height: Dimens.gapX2),
                    SizedBox(
                      height: 150,
                      child: SvgPicture.asset(
                        AppImages.abdominalGirthToHeight,
                        width: Dimens.screenWidthXFourth,
                      ),
                    ),
                    const SizedBox(height: Dimens.gapX1),
                    Text(
                      controller
                          .gerCalculatedAbdominalGirthToHeight()
                          .toStringAsFixed(2),
                      style: AppStyles.tsBlackBold18,
                    )
                  ],
                ),
              ],
            ).paddingAll(Dimens.gapX4)
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Calculated BMI",
                      style: AppStyles.tsBlackMedium18,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    SvgPicture.asset(
                      AppImages.bmi,
                      width: Dimens.screenWidthXThird,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    Text(
                      '${controller.gerCalculatedBMI().toStringAsFixed(2)} kg/m^2',
                      style: AppStyles.tsBlackBold18,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Calculated",
                      style: AppStyles.tsBlackMedium18,
                    ),
                    const Text(
                      "Abdominal Girth to Height",
                      style: AppStyles.tsBlackMedium18,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    SvgPicture.asset(
                      AppImages.abdominalGirthToHeight,
                      width: Dimens.screenWidthXFifth,
                    ),
                    const SizedBox(
                      height: Dimens.gapX2,
                    ),
                    Text(
                      controller
                          .gerCalculatedAbdominalGirthToHeight()
                          .toStringAsFixed(2),
                      style: AppStyles.tsBlackBold18,
                    )
                  ],
                ),
              ],
            ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX2);
  }
}
