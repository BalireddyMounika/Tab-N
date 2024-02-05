import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/themes/app_colors.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../controllers/section_a_controller.dart';

class StationASubScapulaSkinFoldView extends GetView<StationAController> {
  const StationASubScapulaSkinFoldView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(blurRadius: 15, color: AppColors.greyColor)]),
      child: Get.width < 600
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CommonText(
                  text: AppStrings.subscapularSkinFold,
                ),
                const SizedBox(
                  height: Dimens.gapX4,
                ),
                SizedBox(
                  height: Dimens.gapX6,
                  width: Dimens.gapX20,
                  child: CommonInputField(
                    inputType: TextInputType.number,
                    maxLength: 3,
                    wrapper: controller.subScapularSkinFoldWrapper,
                    hintText: "mm",
                  ),
                ),
                const SizedBox(height: Dimens.gapX4),
                Image(
                  image: const AssetImage(AppImages.scaleVertical),
                  width: Dimens.screenWidthX16,
                ),
                const SizedBox(height: Dimens.gapX2),
                SvgPicture.asset(
                  AppImages.tricepsSkinFold,
                  width: Dimens.screenWidthX19,
                ),
              ],
            ).paddingOnly(
              left: Dimens.gapX4, top: Dimens.gapX4, right: Dimens.gapX4)
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    CommonText(
                      text: "${AppStrings.subscapularSkinFold} (mm)",
                    ),
                  ],
                ),
                const SizedBox(
                  height: Dimens.gapX3,
                ),
                SizedBox(
                  height: Dimens.gapX6,
                  width: Dimens.gapX20,
                  child: CommonInputField(
                    inputType: TextInputType.number,
                    maxLength: 3,
                    wrapper: controller.subScapularSkinFoldWrapper,
                    hintText: "mm",
                  ),
                ),
                const SizedBox(height: Dimens.gapX2),
                Image(
                  image: const AssetImage(AppImages.scaleVertical),
                  width: Dimens.screenWidthX16,
                ),
                const SizedBox(height: Dimens.gapX2),
                SvgPicture.asset(
                  AppImages.tricepsSkinFold,
                  width: Dimens.screenWidthX19,
                ),
              ],
            ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
