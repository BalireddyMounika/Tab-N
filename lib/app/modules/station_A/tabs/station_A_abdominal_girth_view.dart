import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nivish/app/data/values/app_string.dart';
import 'package:nivish/app/data/values/images.dart';
import 'package:nivish/app/modules/station_A/controllers/section_a_controller.dart';
import 'package:nivish/app/themes/app_colors.dart';
import '../../../../widgets/common_input_field.dart';
import '../../../../widgets/common_text.dart';
import '../../../data/values/dimens.dart';
import '../../../themes/app_styles.dart';

class StationAAbdominalGirthView extends GetView<StationAController> {
  const StationAAbdominalGirthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: AppColors.white,
          boxShadow: [BoxShadow(blurRadius: 15, color: AppColors.greyColor)]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CommonText(
                text: "${AppStrings.abdominalGirth} (cm)",
              ),
              SizedBox(width: Dimens.gapX1),
              Text(
                "*",
                style: AppStyles.tsBrownMedium24,
              )
            ],
          ),
          const SizedBox(height: Dimens.gapX2),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: Dimens.gapX6,
                      width: Dimens.gapX20,
                      child: CommonInputField(
                        inputType: TextInputType.number,
                        maxLength: 3,
                        wrapper: controller.abdominalGirthWrapper,
                        hintText: "cm",
                      ),
                    ),
                    const SizedBox(height: Dimens.gapX2),
                    SvgPicture.asset(
                      AppImages.abdominalGirth,
                      height: Dimens.screenHeightX34,
                      width: Dimens.screenWidthX44,
                    ),
                  ],
                ),
                const SizedBox(
                  width: Dimens.gapX2,
                ),
                Image(
                  image: const AssetImage(AppImages.scaleHorizontal),
                  height: Dimens.screenHeightX3,
                ),
              ]),
        ],
      ).paddingAll(Dimens.gapX4),
    ).paddingSymmetric(horizontal: Dimens.gapX3);
  }
}
